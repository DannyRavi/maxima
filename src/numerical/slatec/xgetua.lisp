;;; Compiled by f2cl version:
;;; ("f2cl1.l,v 1.212 2009/01/08 18:58:49 rtoy Exp $"
;;;  "f2cl2.l,v 1.37 2008/02/22 22:19:33 rtoy Exp $"
;;;  "f2cl3.l,v 1.6 2008/02/22 22:19:33 rtoy Exp $"
;;;  "f2cl4.l,v 1.7 2008/02/22 22:19:34 rtoy Exp $"
;;;  "f2cl5.l,v 1.199 2009/01/07 19:16:59 rtoy Exp $"
;;;  "f2cl6.l,v 1.48 2008/08/24 00:56:27 rtoy Exp $"
;;;  "macros.l,v 1.112 2009/01/08 12:57:19 rtoy Exp $")

;;; Using Lisp CMU Common Lisp Snapshot 2008-12 (19E)
;;; 
;;; Options: ((:prune-labels nil) (:auto-save t) (:relaxed-array-decls t)
;;;           (:coerce-assigns :as-needed) (:array-type ':simple-array)
;;;           (:array-slicing nil) (:declare-common nil)
;;;           (:float-format double-float))

(in-package :slatec)


(defun xgetua (iunita n)
  (declare (type (integer) n)
           (type (simple-array f2cl-lib:integer4 (*)) iunita))
  (prog ((index$ 0) (i 0))
    (declare (type (integer) i index$))
    (setf n (j4save 5 0 f2cl-lib:%false%))
    (f2cl-lib:fdo (i 1 (f2cl-lib:int-add i 1))
                  ((> i n) nil)
      (tagbody
        (setf index$ (f2cl-lib:int-add i 4))
        (if (= i 1) (setf index$ 3))
        (setf (f2cl-lib:fref iunita (i) ((1 5)))
                (j4save index$ 0 f2cl-lib:%false%))
       label30))
    (go end_label)
   end_label
    (return (values nil n))))

(in-package #-gcl #:cl-user #+gcl "CL-USER")
#+#.(cl:if (cl:find-package '#:f2cl) '(and) '(or))
(eval-when (:load-toplevel :compile-toplevel :execute)
  (setf (gethash 'fortran-to-lisp::xgetua
                 fortran-to-lisp::*f2cl-function-info*)
          (fortran-to-lisp::make-f2cl-finfo
           :arg-types '((simple-array fortran-to-lisp::integer4 (5)) (integer))
           :return-values '(nil fortran-to-lisp::n)
           :calls '(fortran-to-lisp::j4save))))

