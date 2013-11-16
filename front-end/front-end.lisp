;; This software is Copyright (c) 2012 Chris Bagley
;; (techsnuffle<at>gmail<dot>com)
;; Chris Bagley grants you the rights to
;; distribute and use this software as governed
;; by the terms of the Lisp Lesser GNU Public License
;; (http://opensource.franz.com/preamble.html),
;; known as the LLGPL.

(in-package :varjo)

(defun stabilizedp (last-pass one-before-that)
  (equal (first last-pass) (first one-before-that)))

;; remember that args has context in it
(defun translate (args body)
  (let ((env (make-instance 'environment)))
    (pipe-> (args body env)
      #'split-input-into-env
      #'process-in-args
      #'process-uniforms      
      (stabilizedp #'macroexpand-pass
                   #'inject-functions-pass
                   #'compiler-macroexpand-pass)
      #'compile-pass
      #'gen-in-arg-strings
      #'final-uniform-strings
      #'final-string-compose
      #'process-output
      #'code-obj->result-object)))


;;----------------------------------------------------------------------

;;[TODO] Move these errors
(defun check-arg-forms (in-args)
  (loop for stream in in-args :do 
       (when (or (not (every #'keywordp (cddr stream))) (< (length stream) 2))
         (error "Declaration ~a is badly formed.~%Should be (-var-name- -var-type- &optional qualifiers)" stream)))
  t)

(defun check-for-dups (in-vars uniforms)  
  (if (intersection (mapcar #'first in-vars) (mapcar #'first uniforms))
      (error "Varjo: Duplicates names found between in-vars and uniforms")
      t))

(defun split-input-into-env (args body env)
  (let* ((uni-pos (symbol-name-position '&uniform args))
         (context-pos (symbol-name-position '&context args))
         (in-vars (subseq args 0 (or uni-pos context-pos)))
         (uniforms (when uni-pos (subseq args (1+ uni-pos) context-pos)))
         (context (when context-pos (subseq args (1+ context-pos)))))
    (when (and (check-arg-forms uniforms) (check-arg-forms in-vars)
               (check-for-dups in-vars uniforms))
      (setf (v-raw-in-args env) in-vars)
      (setf (v-raw-uniforms env) uniforms)
      (setf (v-raw-context env) context)
      (when (not context-pos) (setf (v-context env) *default-context*))
      (values body env))))

;;----------------------------------------------------------------------

(defun process-in-args (code env)
  "Populate in-args and create fake-structs where they are needed"
  (let ((in-args (v-raw-in-args env)))
    (loop :for (name type . qualifiers) :in in-args :do
       (let* ((type-obj (type-spec->type type :place t))
              (fake-struct (when (typep type-obj 'v-struct)
                             (make-fake-struct type-obj env))))
         (add-var name (make-instance 'v-value :type (or fake-struct type-obj))
                  env t)
         (if fake-struct
             (loop :for (slot-name slot-type . acc) :in (v-slots fake-struct) 
                :do (push `(,(fake-slot-name slot-name) ,slot-type ,qualifiers) 
                          (v-in-args env)))
             (push `(,name ,(v-type-name type-obj) ,qualifiers) 
                   (v-in-args env)))))
    (values code env)))

;;----------------------------------------------------------------------

(defun process-uniforms (code env)
  (let ((uniforms (v-raw-uniforms env)))
    (loop :for (name type) :in uniforms :do
       (add-var name (make-instance 'v-value :type (type-spec->type type)
                                    :read-onlyp t) 
                env t)
       (push (list name type) (v-uniforms env)))
    (values code env)))

;;----------------------------------------------------------------------

(defun v-macroexpand-all (code env)
  (cond ((atom code) code)
        (t (let* ((head (first code))
                  (m (get-macro head env)))
             (if m 
                 (v-macroexpand-all (apply m (rest code)) env)
                 (loop :for c :in code :collect (v-macroexpand-all c env)))))))

(defun macroexpand-pass (code env)
  (values (v-macroexpand-all code env) env))

;;----------------------------------------------------------------------

(defun v-compiler-macroexpand-all (code env)
  (cond ((atom code) code)
        (t (let* ((head (first code))
                  (m (get-compiler-macro head env)))
             (if m 
                 (v-compiler-macroexpand-all (apply m (rest code)) env)
                 (loop :for c :in code :collect (v-compiler-macroexpand-all c env)))))))

(defun compiler-macroexpand-pass (code env)
  (values (v-compiler-macroexpand-all code env) env))

;;----------------------------------------------------------------------

;; [TODO] prehaps reverse (,head <@f) and the dependencies
(defun find-injected-functions (code env &optional seen)
  (remove 
   nil
   (unless (atom code)
     (let* ((head (first code))
            (f (unless (find head seen) 
                 (get-external-function head *global-env*))))
       (append (when f (cons `(,head ,@f) 
                             (remove nil (find-injected-functions 
                                          (rest f) env (cons head seen)))))
               (loop :for c :in code :if (listp c) :append
                  (remove nil (find-injected-functions
                               c env (if f (cons head seen) seen)))))))))

(defun inject-functions-pass (code env)
  (let ((injected-funcs (remove nil (find-injected-functions code env))))
    (if injected-funcs
        (values `(labels ,injected-funcs ,@code) env)
        (values code env))))

;;----------------------------------------------------------------------

(defun compile-pass (code env)  
  (values (varjo->glsl code env) 
          env))

;;----------------------------------------------------------------------

(defun gen-in-arg-strings (code env) 
  (values code env))

;;----------------------------------------------------------------------

(defun final-uniform-strings (code env) 
  (values code env))

;;----------------------------------------------------------------------

(defun final-string-compose (code env) 
  (values code env))

;;----------------------------------------------------------------------

(defun process-output (code env) 
  (values code env))

;;----------------------------------------------------------------------

(defun code-obj->result-object (code env) 
  (values code env))
