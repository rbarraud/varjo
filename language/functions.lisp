;; This software is Copyright (c) 2012 Chris Bagley
;; (techsnuffle<at>gmail<dot>com)
;; Chris Bagley grants you the rights to
;; distribute and use this software as governed
;; by the terms of the Lisp Lesser GNU Public License
;; (http://opensource.franz.com/preamble.html),
;; known as the LLGPL.

;; [TODO] (break) needs a semicolon, fix this!
;; [TODO] setf coudl change type, how do we handle this?
(in-package :varjo)

;; (V-DEFUN LDEXP (X TI &CONTEXT (:330 :440)) "ldexp(~a,~a)" (TFD IN) 0 :PLACE NIL) 
;; (V-DEFUN BIT-COUNT (VALUE &CONTEXT (:330 :440)) "bitCount(~a)" (TIU) (#'TI 0) :PLACE NIL) 
;; (V-DEFUN FIND-L-S-B (VALUE &CONTEXT (:330 :440)) "findLSB(~a)" (TIU) (#'TI 0) :PLACE NIL) 
;; (V-DEFUN FIND-M-S-B (VALUE &CONTEXT (:330 :440)) "findMSB(~a)" (TIU) (#'TI 0) :PLACE NIL) 
;; (V-DEFUN FLOAT-BITS-TO-INT (VALUE &CONTEXT (:330 :440)) "floatBitsToInt(~a)" (TF) (#'TI 0) :PLACE NIL) 
;; (V-DEFUN FLOAT-BITS-TO-UINT (VALUE &CONTEXT (:330 :440)) "floatBitsToUint(~a)" (TF) (#'TU 0) :PLACE NIL) 
;; (V-DEFUN NOISEN (X &CONTEXT (:330 :440)) "noisen(~a)" (TF) (#'VECN 0) :PLACE NIL)
;; (V-DEFUN INT-BITS-TO-FLOAT (VALUE &CONTEXT (:330 :440)) "intBitsToFloat(~a)" (TI) & :PLACE NIL) 
;; (V-DEFUN UINT-BITS-TO-FLOAT (VALUE &CONTEXT (:330 :440)) "uintBitsToFloat(~a)" (TF) & :PLACE NIL) 


(V-DEFUN CLAMP (X MINVAL MAXVAL &CONTEXT (:|330| :|440|))
         "clamp(~a,~a,~a)"
         (V-TIU V-TIU V-TIU) 0 :PLACE NIL)

(V-DEFUN MAX (X Y &CONTEXT (:|330| :|440|))
         "max(~a,~a)"
         (V-TIU V-TIU) 0
         :PLACE NIL)

(V-DEFUN MIN (X Y &CONTEXT (:|330| :|440|))
         "min(~a,~a)"
         (V-TIU V-TIU) 0
         :PLACE NIL)

(V-DEFUN BITFIELD-INSERT (BASE INSERT OFFSET BITS &CONTEXT (:|330| :|440|))
         "bitfieldInsert(~a,~a,~a,~a)"
         (V-TIU V-TIU V-INT V-INT) 0 :PLACE NIL)

(V-DEFUN CLAMP (X MINVAL MAXVAL &CONTEXT (:|330| :|440|))
         "clamp(~a,~a,~a)"
         (V-TFD V-TFD V-TFD) 0 :PLACE NIL)

(V-DEFUN MAX (X Y &CONTEXT (:|330| :|440|))
         "max(~a,~a)"
         (V-TFD V-TFD) 0
         :PLACE NIL)

(V-DEFUN MIN (X Y &CONTEXT (:|330| :|440|))
         "min(~a,~a)"
         (V-TFD V-TFD) 0
         :PLACE NIL)

(V-DEFUN MIX (X Y A &CONTEXT (:|330| :|440|))
         "mix(~a,~a,~a)"
         (V-TFD V-TFD V-TB) 0 :PLACE NIL)

(V-DEFUN MIX (X Y A &CONTEXT (:|330| :|440|))
         "mix(~a,~a,~a)"
         (V-TFD V-TFD V-TFD) 0 :PLACE NIL)

(V-DEFUN MOD (X Y &CONTEXT (:|330| :|440|))
         "mod(~a,~a)"
         (V-TFD V-TFD) 0
         :PLACE NIL)

(V-DEFUN FACEFORWARD (N I NREF &CONTEXT (:|330| :|440|))
         "faceforward(~a,~a,~a)"
         (V-TFD V-TFD V-TFD) 0 :PLACE NIL)

(V-DEFUN FMA (A B C &CONTEXT (:|330| :|440|))
         "fma(~a,~a,~a)"
         (V-TFD V-TFD V-TFD) 0 :PLACE NIL)

(V-DEFUN REFLECT (I N &CONTEXT (:|330| :|440|))
         "reflect(~a,~a)"
         (V-TFD V-TFD)
         0 :PLACE NIL)

(V-DEFUN REFRACT (I N ETA &CONTEXT (:|330| :|440|))
         "refract(~a,~a,~a)"
         (V-TFD V-TFD V-FLOAT) 0 :PLACE NIL)

(V-DEFUN SMOOTHSTEP (EDGE0 EDGE1 X &CONTEXT (:|330| :|440|))
         "smoothstep(~a,~a,~a)"
         (V-TFD V-TFD V-TFD) 0 :PLACE NIL)

(V-DEFUN STEP (EDGE X &CONTEXT (:|330| :|440|))
         "step(~a,~a)"
         (V-TFD V-TFD) 0
         :PLACE NIL)

(V-DEFUN MIX (X Y A &CONTEXT (:|330| :|440|))
         "mix(~a,~a,~a)"
         (V-TD V-TD V-DOUBLE) 0 :PLACE NIL)

(V-DEFUN MIX (X Y A &CONTEXT (:|330| :|440|))
         "mix(~a,~a,~a)"
         (V-TF V-TF V-FLOAT) 0 :PLACE NIL)

(V-DEFUN ATAN (Y X &CONTEXT (:|330| :|440|))
         "atan(~a,~a)"
         (V-TF V-TF) 0
         :PLACE NIL)

(V-DEFUN POW (X Y &CONTEXT (:|330| :|440|))
         "pow(~a,~a)"
         (V-TF V-TF) 0 :PLACE
         NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-FLOAT) V-BOOL
         :PLACE NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-DOUBLE) V-BOOL
         :PLACE NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-VEC2) V-BVEC2
         :PLACE NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-DVEC2) V-BVEC2
         :PLACE NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-VEC3) V-BVEC3
         :PLACE NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-DVEC3) V-BVEC3
         :PLACE NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-VEC4) V-BVEC4
         :PLACE NIL)

(V-DEFUN ISINF (X &CONTEXT (:|330| :|440|))
         "isinf(~a)"
         (V-DVEC4) V-BVEC4
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-FLOAT) V-BOOL
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-DOUBLE) V-BOOL
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-VEC2) V-BVEC2
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-DVEC2) V-BVEC2
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-VEC3) V-BVEC3
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-DVEC3) V-BVEC3
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-VEC4) V-BVEC4
         :PLACE NIL)

(V-DEFUN ISNAN (X &CONTEXT (:|330| :|440|))
         "isnan(~a)"
         (V-DVEC4) V-BVEC4
         :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-BVECN V-BVECN)
         0 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-BVECN V-BVECN) 0 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-FLOAT V-FLOAT)
         V-BOOL :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-VEC2 V-VEC2)
         V-BVEC2 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-VEC3 V-VEC3)
         V-BVEC3 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-VEC4 V-VEC4)
         V-BVEC4 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-FLOAT V-FLOAT) V-BOOL :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-VEC2 V-VEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-VEC3 V-VEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-VEC4 V-VEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-FLOAT V-FLOAT) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-VEC2 V-VEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-VEC3 V-VEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-VEC4 V-VEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-FLOAT V-FLOAT) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-VEC2 V-VEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-VEC3 V-VEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-VEC4 V-VEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-FLOAT V-FLOAT) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-VEC2 V-VEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-VEC3 V-VEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-VEC4 V-VEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-FLOAT V-FLOAT) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-VEC2 V-VEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-VEC3 V-VEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-VEC4 V-VEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-INT V-INT)
         V-BOOL :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-IVEC2 V-IVEC2)
         V-BVEC2 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-IVEC3 V-IVEC3)
         V-BVEC3 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-IVEC4 V-IVEC4)
         V-BVEC4 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-INT V-INT) V-BOOL :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-IVEC2 V-IVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-IVEC3 V-IVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-IVEC4 V-IVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-INT V-INT) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-IVEC2 V-IVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-IVEC3 V-IVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-IVEC4 V-IVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-INT V-INT) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-IVEC2 V-IVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-IVEC3 V-IVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-IVEC4 V-IVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-INT V-INT) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-IVEC2 V-IVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-IVEC3 V-IVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-IVEC4 V-IVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-INT V-INT) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-IVEC2 V-IVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-IVEC3 V-IVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-IVEC4 V-IVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-UINT V-UINT)
         V-BOOL :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-UVEC2 V-UVEC2)
         V-BVEC2 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-UVEC3 V-UVEC3)
         V-BVEC3 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-UVEC4 V-UVEC4)
         V-BVEC4 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-UINT V-UINT) V-BOOL :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-UVEC2 V-UVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-UVEC3 V-UVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-UVEC4 V-UVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-UINT V-UINT) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-UVEC2 V-UVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-UVEC3 V-UVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-UVEC4 V-UVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-UINT V-UINT) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-UVEC2 V-UVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-UVEC3 V-UVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-UVEC4 V-UVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-UINT V-UINT) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-UVEC2 V-UVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-UVEC3 V-UVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-UVEC4 V-UVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-UINT V-UINT) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-UVEC2 V-UVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-UVEC3 V-UVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-UVEC4 V-UVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-DOUBLE V-DOUBLE) V-BOOL :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-DVEC2 V-DVEC2)
         V-BVEC2 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-DVEC3 V-DVEC3)
         V-BVEC3 :PLACE NIL)

(V-DEFUN EQUAL (X Y &CONTEXT (:|330| :|440|))
         "equal(~a,~a)"
         (V-DVEC4 V-DVEC4)
         V-BVEC4 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-DOUBLE V-DOUBLE) V-BOOL :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-DVEC2 V-DVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-DVEC3 V-DVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN NOT-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "notEqual(~a,~a)"
         (V-DVEC4 V-DVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-DOUBLE V-DOUBLE) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-DVEC2 V-DVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-DVEC3 V-DVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN (X Y &CONTEXT (:|330| :|440|))
         "greaterThan(~a,~a)"
         (V-DVEC4 V-DVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-DOUBLE V-DOUBLE) V-BOOL :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-DVEC2 V-DVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-DVEC3 V-DVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN GREATER-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "greaterThanEqual(~a,~a)"
         (V-DVEC4 V-DVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-DOUBLE V-DOUBLE) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-DVEC2 V-DVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-DVEC3 V-DVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN (X Y &CONTEXT (:|330| :|440|))
         "lessThan(~a,~a)"
         (V-DVEC4 V-DVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-DOUBLE V-DOUBLE) V-BOOL :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-DVEC2 V-DVEC2) V-BVEC2 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-DVEC3 V-DVEC3) V-BVEC3 :PLACE NIL)

(V-DEFUN LESS-THAN-EQUAL (X Y &CONTEXT (:|330| :|440|))
         "lessThanEqual(~a,~a)"
         (V-DVEC4 V-DVEC4) V-BVEC4 :PLACE NIL)

(V-DEFUN ABS (X &CONTEXT (:|330| :|440|))
         "abs(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN ABS (X &CONTEXT (:|330| :|440|))
         "abs(~a)"
         (V-TI) 0 :PLACE NIL)

(V-DEFUN ACOS (X &CONTEXT (:|330| :|440|))
         "acos(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN ACOSH (X &CONTEXT (:|330| :|440|))
         "acosh(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN ALL (X &CONTEXT (:|330| :|440|))
         "all(~a)"
         (V-BVECN) V-BOOL :PLACE
         NIL)

(V-DEFUN ANY (X &CONTEXT (:|330| :|440|))
         "any(~a)"
         (V-BVECN) V-BOOL :PLACE
         NIL)

(V-DEFUN ASIN (X &CONTEXT (:|330| :|440|))
         "asin(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN ASINH (X &CONTEXT (:|330| :|440|))
         "asinh(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN ATAN (Y_OVER_X &CONTEXT (:|330| :|440|))
         "atan(~a)"
         (V-TF) 0 :PLACE
         NIL)

(V-DEFUN ATANH (X &CONTEXT (:|330| :|440|))
         "atanh(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN ATOMIC-COUNTER (C &CONTEXT (:|330| :|440|))
         "atomicCounter(~a)"
         (V-ATOMIC_UINT) V-UINT :PLACE NIL)

(V-DEFUN ATOMIC-COUNTER-DECREMENT (C &CONTEXT (:|330| :|440|))
         "atomicCounterDecrement(~a)"
         (V-ATOMIC_UINT) V-UINT :PLACE NIL)

(V-DEFUN ATOMIC-COUNTER-INCREMENT (C &CONTEXT (:|330| :|440|))
         "atomicCounterIncrement(~a)"
         (V-ATOMIC_UINT) V-UINT :PLACE NIL)

(V-DEFUN BARRIER (&CONTEXT (:|330| :|440|))
         "barrier()" NIL V-VOID :PLACE NIL)

(V-DEFUN BITFIELD-EXTRACT (VALUE OFFSET BITS &CONTEXT (:|330| :|440|))
         "bitfieldExtract(~a,~a,~a)"
         (V-TIU V-INT V-INT) 0 :PLACE NIL)

(V-DEFUN BITFIELD-REVERSE (VALUE &CONTEXT (:|330| :|440|))
         "bitfieldReverse(~a)"
         (V-TIU) 0 :PLACE NIL)

(V-DEFUN CEIL (X &CONTEXT (:|330| :|440|))
         "ceil(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN CLAMP (X MINVAL MAXVAL &CONTEXT (:|330| :|440|))
         "clamp(~a,~a,~a)"
         (V-TD V-DOUBLE V-DOUBLE) 0 :PLACE NIL)

(V-DEFUN CLAMP (X MINVAL MAXVAL &CONTEXT (:|330| :|440|))
         "clamp(~a,~a,~a)"
         (V-TF V-FLOAT V-FLOAT) 0 :PLACE NIL)

(V-DEFUN CLAMP (X MINVAL MAXVAL &CONTEXT (:|330| :|440|))
         "clamp(~a,~a,~a)"
         (V-TI V-INT V-INT) 0 :PLACE NIL)

(V-DEFUN CLAMP (X MINVAL MAXVAL &CONTEXT (:|330| :|440|))
         "clamp(~a,~a,~a)"
         (V-TU V-UINT V-UINT) 0 :PLACE NIL)

(V-DEFUN COS (ANGLE &CONTEXT (:|330| :|440|))
         "cos(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN COSH (X &CONTEXT (:|330| :|440|))
         "cosh(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN CROSS (X Y &CONTEXT (:|330| :|440|))
         "cross(~a,~a)"
         (V-DVEC3 V-DVEC3)
         V-DVEC3 :PLACE NIL)

(V-DEFUN CROSS (X Y &CONTEXT (:|330| :|440|))
         "cross(~a,~a)"
         (V-VEC3 V-VEC3)
         V-VEC3 :PLACE NIL)

(V-DEFUN D-FDX (P &CONTEXT (:|330| :|440|))
         "dFdx(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN D-FDY (P &CONTEXT (:|330| :|440|))
         "dFdy(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN DEGREES (RADIANS &CONTEXT (:|330| :|440|))
         "degrees(~a)"
         (V-TF) 0
         :PLACE NIL)

(V-DEFUN DETERMINANT (M &CONTEXT (:|330| :|440|))
         "determinant(~a)"
         (V-DMATN)
         V-DOUBLE :PLACE NIL)

(V-DEFUN DETERMINANT (M &CONTEXT (:|330| :|440|))
         "determinant(~a)"
         (V-MATN)
         V-FLOAT :PLACE NIL)

(V-DEFUN DISTANCE (P0 P1 &CONTEXT (:|330| :|440|))
         "distance(~a,~a)"
         (V-TD V-TD) V-DOUBLE :PLACE NIL)

(V-DEFUN DISTANCE (P0 P1 &CONTEXT (:|330| :|440|))
         "distance(~a,~a)"
         (V-TF V-TF) V-FLOAT :PLACE NIL)

(V-DEFUN DOT (X Y &CONTEXT (:|330| :|440|))
         "dot(~a,~a)"
         (V-TD V-TD) V-DOUBLE
         :PLACE NIL)

(V-DEFUN DOT (X Y &CONTEXT (:|330| :|440|))
         "dot(~a,~a)"
         (V-TF V-TF) V-FLOAT
         :PLACE NIL)

(V-DEFUN EMIT-STREAM-VERTEX (STREAM &CONTEXT (:|330| :|440|))
         "EmitStreamVertex(~a)"
         (V-INT) V-VOID :PLACE NIL)

(V-DEFUN EMIT-VERTEX (&CONTEXT (:|330| :|440|))
         "EmitVertex()" NIL V-VOID
         :PLACE NIL)

(V-DEFUN END-PRIMITIVE (&CONTEXT (:|330| :|440|))
         "EndPrimitive()" NIL V-VOID
         :PLACE NIL)

(V-DEFUN END-STREAM-PRIMITIVE (STREAM &CONTEXT (:|330| :|440|))
         "EndStreamPrimitive(~a)"
         (V-INT) V-VOID :PLACE NIL)

(V-DEFUN EXP (X &CONTEXT (:|330| :|440|))
         "exp(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN EXP-2 (X &CONTEXT (:|330| :|440|))
         "exp2(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN FLOOR (X &CONTEXT (:|330| :|440|))
         "floor(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN FRACT (X &CONTEXT (:|330| :|440|))
         "fract(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN FWIDTH (P &CONTEXT (:|330| :|440|))
         "fwidth(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN GROUP-MEMORY-BARRIER (&CONTEXT (:|330| :|440|))
         "groupMemoryBarrier()" NIL V-VOID :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGE1D) V-INT :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGEBUFFER) V-INT :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGE2D) V-IVEC2 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGECUBE) V-IVEC2 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGERECT) V-IVEC2 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGE1DARRAY) V-IVEC2 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGE2DMS) V-IVEC3 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGE2DARRAY) V-IVEC3 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGECUBE2DARRAY) V-IVEC3 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGE2DMSARRAY) V-IVEC3 :PLACE NIL)

(V-DEFUN IMAGE-SIZE (IMAGE &CONTEXT (:|330| :|440|))
         "imageSize(~a)"
         (V-GIMAGE3D) V-VEC3 :PLACE NIL)

(V-DEFUN INTERPOLATE-AT-CENTROID (INTERPOLANT &CONTEXT (:|330| :|440|))
         "interpolateAtCentroid(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN INTERPOLATE-AT-OFFSET (INTERPOLANT OFFSET &CONTEXT (:|330| :|440|))
         "interpolateAtOffset(~a,~a)"
         (V-TF V-VEC2) 0 :PLACE NIL)

(V-DEFUN INTERPOLATE-AT-SAMPLE (INTERPOLANT SAMPLE &CONTEXT (:|330| :|440|))
         "interpolateAtSample(~a,~a)"
         (V-TF V-INT) 0 :PLACE NIL)

(V-DEFUN INVERSE (M &CONTEXT (:|330| :|440|))
         "inverse(~a)"
         (V-DMATN) 0 :PLACE
         NIL)

(V-DEFUN INVERSE (M &CONTEXT (:|330| :|440|))
         "inverse(~a)"
         (V-MATN) 0 :PLACE
         NIL)

(V-DEFUN INVERSESQRT (X &CONTEXT (:|330| :|440|))
         "inversesqrt(~a)"
         (V-TFD) 0
         :PLACE NIL)

(V-DEFUN LENGTH (X &CONTEXT (:|330| :|440|))
         "length(~a)"
         (V-TD) V-DOUBLE
         :PLACE NIL)

(V-DEFUN LENGTH (X &CONTEXT (:|330| :|440|))
         "length(~a)"
         (V-TF) V-FLOAT
         :PLACE NIL)

(V-DEFUN LOG (X &CONTEXT (:|330| :|440|))
         "log(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN LOG-2 (X &CONTEXT (:|330| :|440|))
         "log2(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN MATRIX-COMP-MULT (X Y &CONTEXT (:|330| :|440|))
         "matrixCompMult(~a,~a)"
         (V-DMATN V-DMATN) V-DMATN :PLACE NIL)

(V-DEFUN MATRIX-COMP-MULT (X Y &CONTEXT (:|330| :|440|))
         "matrixCompMult(~a,~a)"
         (V-MATN V-MATN) V-MATN :PLACE NIL)

(V-DEFUN MAX (X Y &CONTEXT (:|330| :|440|))
         "max(~a,~a)"
         (V-TD V-DOUBLE) 0
         :PLACE NIL)

(V-DEFUN MAX (X Y &CONTEXT (:|330| :|440|))
         "max(~a,~a)"
         (V-TF V-FLOAT) 0
         :PLACE NIL)

(V-DEFUN MAX (X Y &CONTEXT (:|330| :|440|))
         "max(~a,~a)"
         (V-TI V-INT) 0 :PLACE
         NIL)

(V-DEFUN MAX (X Y &CONTEXT (:|330| :|440|))
         "max(~a,~a)"
         (V-TU V-UINT) 0
         :PLACE NIL)

(V-DEFUN MEMORY-BARRIER (&CONTEXT (:|330| :|440|))
         "memoryBarrier()" NIL
         V-VOID :PLACE NIL)

(V-DEFUN MEMORY-BARRIER-ATOMIC-COUNTER (&CONTEXT (:|330| :|440|))
         "memoryBarrierAtomicCounter()" NIL V-VOID :PLACE NIL)

(V-DEFUN MEMORY-BARRIER-BUFFER (&CONTEXT (:|330| :|440|))
         "memoryBarrierBuffer()" NIL V-VOID :PLACE NIL)

(V-DEFUN MEMORY-BARRIER-IMAGE (&CONTEXT (:|330| :|440|))
         "memoryBarrierImage()" NIL V-VOID :PLACE NIL)

(V-DEFUN MEMORY-BARRIER-SHARED (&CONTEXT (:|330| :|440|))
         "memoryBarrierShared()" NIL V-VOID :PLACE NIL)

(V-DEFUN MIN (X Y &CONTEXT (:|330| :|440|))
         "min(~a,~a)"
         (V-TD V-DOUBLE) 0
         :PLACE NIL)

(V-DEFUN MIN (X Y &CONTEXT (:|330| :|440|))
         "min(~a,~a)"
         (V-TF V-FLOAT) 0
         :PLACE NIL)

(V-DEFUN MIN (X Y &CONTEXT (:|330| :|440|))
         "min(~a,~a)"
         (V-TI V-INT) 0 :PLACE
         NIL)

(V-DEFUN MIN (X Y &CONTEXT (:|330| :|440|))
         "min(~a,~a)"
         (V-TU V-UINT) 0
         :PLACE NIL)

(V-DEFUN MOD (X Y &CONTEXT (:|330| :|440|))
         "mod(~a,~a)"
         (V-TD V-DOUBLE) 0
         :PLACE NIL)

(V-DEFUN MOD (X Y &CONTEXT (:|330| :|440|))
         "mod(~a,~a)"
         (V-TF V-FLOAT) 0
         :PLACE NIL)

(V-DEFUN NOISE-1 (X &CONTEXT (:|330| :|440|))
         "noise1(~a)"
         (V-TF) V-FLOAT
         :PLACE NIL)

(V-DEFUN NORMALIZE (X &CONTEXT (:|330| :|440|))
         "normalize(~a)"
         (V-TFD) 0
         :PLACE NIL)

(V-DEFUN NOT (X &CONTEXT (:|330| :|440|))
         "not(~a)"
         (V-BVECN) 0 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC2 V-VEC2) V-MAT2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC3 V-VEC3) V-MAT3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC4 V-VEC4) V-MAT4 :PLACE NIL)

(V-DEFUN PACK-DOUBLE-2X-3-2 (V &CONTEXT (:|330| :|440|))
         "packDouble2x32(~a)"
         (V-UVEC2) V-DOUBLE :PLACE NIL)

(V-DEFUN PACK-HALF-2X-1-6 (V &CONTEXT (:|330| :|440|))
         "packHalf2x16(~a)"
         (V-VEC2) V-UINT :PLACE NIL)

(V-DEFUN PACK-SNORM-2X-1-6 (V &CONTEXT (:|330| :|440|))
         "packSnorm2x16(~a)"
         (V-VEC2) V-UINT :PLACE NIL)

(V-DEFUN PACK-SNORM-4X-8 (V &CONTEXT (:|330| :|440|))
         "packSnorm4x8(~a)"
         (V-VEC4) V-UINT :PLACE NIL)

(V-DEFUN PACK-UNORM-2X-1-6 (V &CONTEXT (:|330| :|440|))
         "packUnorm2x16(~a)"
         (V-VEC2) V-UINT :PLACE NIL)

(V-DEFUN PACK-UNORM-4X-8 (V &CONTEXT (:|330| :|440|))
         "packUnorm4x8(~a)"
         (V-VEC4) V-UINT :PLACE NIL)

(V-DEFUN RADIANS (DEGREES &CONTEXT (:|330| :|440|))
         "radians(~a)"
         (V-TF) 0
         :PLACE NIL)

(V-DEFUN ROUND (X &CONTEXT (:|330| :|440|))
         "round(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN ROUND-EVEN (X &CONTEXT (:|330| :|440|))
         "roundEven(~a)"
         (V-TFD) 0
         :PLACE NIL)

(V-DEFUN SIGN (X &CONTEXT (:|330| :|440|))
         "sign(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN SIGN (X &CONTEXT (:|330| :|440|))
         "sign(~a)"
         (V-TI) 0 :PLACE NIL)

(V-DEFUN SIN (ANGLE &CONTEXT (:|330| :|440|))
         "sin(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN SINH (X &CONTEXT (:|330| :|440|))
         "sinh(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN SMOOTHSTEP (EDGE0 EDGE1 X &CONTEXT (:|330| :|440|))
         "smoothstep(~a,~a,~a)"
         (V-DOUBLE V-DOUBLE V-TD) 2 :PLACE NIL)

(V-DEFUN SMOOTHSTEP (EDGE0 EDGE1 X &CONTEXT (:|330| :|440|))
         "smoothstep(~a,~a,~a)"
         (V-FLOAT V-FLOAT V-TF) 2 :PLACE NIL)

(V-DEFUN SQRT (X &CONTEXT (:|330| :|440|))
         "sqrt(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN STEP (EDGE X &CONTEXT (:|330| :|440|))
         "step(~a,~a)"
         (V-DOUBLE V-TD)
         1 :PLACE NIL)

(V-DEFUN STEP (EDGE X &CONTEXT (:|330| :|440|))
         "step(~a,~a)"
         (V-FLOAT V-TF) 1
         :PLACE NIL)

(V-DEFUN TAN (ANGLE &CONTEXT (:|330| :|440|))
         "tan(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN TANH (X &CONTEXT (:|330| :|440|))
         "tanh(~a)"
         (V-TF) 0 :PLACE NIL)

(V-DEFUN TRUNC (X &CONTEXT (:|330| :|440|))
         "trunc(~a)"
         (V-TFD) 0 :PLACE NIL)

(V-DEFUN UNPACK-DOUBLE-2X-3-2 (V &CONTEXT (:|330| :|440|))
         "unpackDouble2x32(~a)"
         (V-DOUBLE) V-UVEC2 :PLACE NIL)

(V-DEFUN UNPACK-HALF-2X-1-6 (V &CONTEXT (:|330| :|440|))
         "unpackHalf2x16(~a)"
         (V-UINT) V-VEC2 :PLACE NIL)

(V-DEFUN UNPACK-SNORM-2X-1-6 (P &CONTEXT (:|330| :|440|))
         "unpackSnorm2x16(~a)"
         (V-UINT) V-VEC2 :PLACE NIL)

(V-DEFUN UNPACK-SNORM-4X-8 (P &CONTEXT (:|330| :|440|))
         "unpackSnorm4x8(~a)"
         (V-UINT) V-VEC4 :PLACE NIL)

(V-DEFUN UNPACK-UNORM-2X-1-6 (P &CONTEXT (:|330| :|440|))
         "unpackUnorm2x16(~a)"
         (V-UINT) V-VEC2 :PLACE NIL)

(V-DEFUN UNPACK-UNORM-4X-8 (P &CONTEXT (:|330| :|440|))
         "unpackUnorm4x8(~a)"
         (V-UINT) V-VEC4 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MATN) 0
         :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMATN) 0
         :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC2 V-DVEC2) V-DMAT2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC3 V-DVEC3) V-DMAT3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC4 V-DVEC4) V-DMAT4 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT2X2)
         V-MAT2X2 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT3X2)
         V-MAT2X3 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT4X2)
         V-MAT2X4 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT2X3)
         V-MAT3X2 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT3X3)
         V-MAT3X3 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT4X3)
         V-MAT3X4 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT2X4)
         V-MAT4X2 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT3X4)
         V-MAT4X3 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-MAT4X4)
         V-MAT4X4 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT2X2)
         V-DMAT2X2 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT3X2)
         V-DMAT2X3 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT4X2)
         V-DMAT2X4 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT2X3)
         V-DMAT3X2 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT3X3)
         V-DMAT3X3 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT4X3)
         V-DMAT3X4 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT2X4)
         V-DMAT4X2 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT3X4)
         V-DMAT4X3 :PLACE NIL)

(V-DEFUN TRANSPOSE (M &CONTEXT (:|330| :|440|))
         "transpose(~a)"
         (V-DMAT4X4)
         V-DMAT4X4 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC2 V-VEC2) V-MAT2X2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC3 V-VEC2) V-MAT3X2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC4 V-VEC2) V-MAT4X2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC2 V-VEC3) V-MAT2X3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC3 V-VEC3) V-MAT3X3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC4 V-VEC3) V-MAT4X3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC2 V-VEC4) V-MAT2X4 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC3 V-VEC4) V-MAT3X4 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-VEC4 V-VEC4) V-MAT4X4 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC2 V-DVEC2) V-DMAT2X2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC3 V-DVEC2) V-DMAT3X2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC4 V-DVEC2) V-DMAT4X2 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC2 V-DVEC3) V-DMAT2X3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC3 V-DVEC3) V-DMAT3X3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC4 V-DVEC3) V-DMAT4X3 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC2 V-DVEC4) V-DMAT2X4 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC3 V-DVEC4) V-DMAT3X4 :PLACE NIL)

(V-DEFUN OUTER-PRODUCT (C R &CONTEXT (:|330| :|440|))
         "outerProduct(~a,~a)"
         (V-DVEC4 V-DVEC4) V-DMAT4X4 :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE1D V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE1D V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE1D V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE1D V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE1D V-INT V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE1D V-INT V-UINT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE1D V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE1D V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE1D V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE1D V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE1D V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE1D V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE1D V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE1D V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE1D V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE1D V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE1D V-INT) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE1D V-INT V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE2D V-IVEC2) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE2D V-IVEC2 V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE3D V-IVEC3) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE3D V-IVEC3 V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT V-INT) V-INT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE2DRECT V-IVEC2) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE2DRECT V-IVEC2 V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT V-INT) V-INT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGECUBE V-IVEC3) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGECUBE V-IVEC3 V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT V-INT) V-INT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGEBUFFER V-INT) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGEBUFFER V-INT V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT V-INT) V-INT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT V-UINT)
         V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE1DARRAY V-IVEC2) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE1DARRAY V-IVEC2 V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT V-INT) V-INT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT V-UINT)
         V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE2DARRAY V-IVEC3) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE2DARRAY V-IVEC3 V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT V-INT) V-INT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT V-UINT)
         V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGECUBEARRAY V-IVEC3) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGECUBEARRAY V-IVEC3 V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P SAMPLE COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT V-INT)
         V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P SAMPLE COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT V-UINT)
         V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-INT) V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P SAMPLE &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE2DMS V-IVEC2 V-INT V-GVEC4) V-VOID :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-ADD (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAdd(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-AND (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicAnd(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P SAMPLE COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT V-INT)
         V-INT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-COMP-SWAP
         (IMAGE P SAMPLE COMPARE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicCompSwap(~a,~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT V-UINT) V-UINT :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT) V-INT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-EXCHANGE (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicExchange(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-MAX (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMax(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-MIN (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicMin(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-OR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicOr(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT) V-UINT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-INT) V-INT :PLACE
         NIL)

(V-DEFUN IMAGE-ATOMIC-XOR (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageAtomicXor(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-UINT) V-UINT
         :PLACE NIL)

(V-DEFUN IMAGE-LOAD (IMAGE P SAMPLE &CONTEXT (:|330| :|440|))
         "imageLoad(~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT) V-GVEC4 :PLACE NIL)

(V-DEFUN IMAGE-STORE (IMAGE P SAMPLE DATA &CONTEXT (:|330| :|440|))
         "imageStore(~a,~a)"
         (V-GIMAGE2DMSARRAY V-IVEC3 V-INT V-GVEC4) V-VOID :PLACE
         NIL)
