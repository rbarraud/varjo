(in-package :varjo)
(in-readtable :fn.reader)

(defun qualified-eql (ret-a ret-b)
  (if (and (typep ret-a 'v-type) (typep ret-b 'v-type))
      (and (v-type-eq ret-a ret-b)
           (= (length (qualifiers ret-a)) (length (qualifiers ret-b)))
           (every #'eq (qualifiers ret-a) (qualifiers ret-b)))
      (and (v-type-eq (v-type-of ret-a) (v-type-of ret-b))
           (= (length (qualifiers ret-a)) (length (qualifiers ret-b)))
           (every #'eq (qualifiers ret-a) (qualifiers ret-b)))))

(defun merge-return-sets (sets)
  (labels ((%merge-return-sets (set-a set-b)
             (assert (and (= (length set-a) (length set-b))
                          (every #'qualified-eql set-a set-b))
                     () 'return-type-mismatch
                     :sets (list set-a set-b))
             set-a))
    (let* ((sets (remove nil sets)))
      (reduce #'%merge-return-sets (rest sets)
              :initial-value (first sets)))))

;;------------------------------------------------------------

(defgeneric nth-return-name (n stage &optional include-instance-name)
  (:method (n (stage stage) &optional include-instance-name)
    (format nil "~@[~a.~]_~a_OUT_~a"
            (when include-instance-name
              (if (typep stage 'tessellation-control-stage)
                  (format nil "~a[gl_InvocationID]" *out-block-name*)
                  *out-block-name*))
            (substitute #\_ #\- (symbol-name (type-of stage)))
            n))
  (:method (n (stage fragment-stage) &optional include-instance-name)
    (declare (ignore include-instance-name))
    (format nil "_~a_OUT_~a"
            (substitute #\_ #\- (symbol-name (type-of stage)))
            n)))

(defun mvals->out-form (code-object env)
  (let ((mvals (rest (coerce (type-set code-object) 'list)))
        (stage (stage env)))
    `(progn
       ,@(loop :for mval :in mvals :for i :from 1 :collect
            (with-slots (value qualifiers) mval
              `(glsl-expr ,(format nil "~a = ~a"
                                   (nth-return-name i stage t)
                                   (glsl-name mval))
                          :void))))))

;; (defun out-qualifier-p (x env)
;;   (declare (ignore env))
;;   ;; {TODO} make this work properly
;;   (find x '(:smooth :flat :noperspective)))

;;------------------------------------------------------------

(defun %array-the-return-vals-for-size (size emit-vals)
  (map 'vector
       λ(if (typep _ 'typed-out-name)
            (let ((type (v-type-of _)))
              (make-typed-out-name
               (out-name _)
               (v-array-type-of type size (flow-ids type))
               (qualifiers _)))
            (qualify-type (v-array-type-of _ size (flow-ids _))
                          (qualifiers _)))
       emit-vals))

;;------------------------------------------------------------
