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


(let ((nbm1 0)
      (nbt12 0)
      (nbm12 0)
      (nbth1 0)
      (xmax 0.0)
      (bm1cs
       (make-array 37
                   :element-type 'double-float
                   :initial-contents '(0.1069845452618063 0.003274915039715965
                                       -2.9877832668316986e-5
                                       8.331237177991975e-7
                                       -4.1126656903020076e-8
                                       2.8553442287892154e-9
                                       -2.485408305415624e-10
                                       2.5433933380725825e-11
                                       -2.9410457728229675e-12
                                       3.7433920254939033e-13
                                       -5.149118293821167e-14
                                       7.552535949865144e-15
                                       -1.1694097068288465e-15
                                       1.8965624494347915e-16
                                       -3.2019553686932864e-17
                                       5.599548399316204e-18
                                       -1.0102158947304325e-18
                                       1.873844985727563e-19
                                       -3.5635374703285804e-20
                                       6.931283819971238e-21
                                       -1.3760594534065001e-21
                                       2.7834307841070803e-22
                                       -5.727595364320562e-23
                                       1.1973614459188927e-23
                                       -2.539928509891872e-24
                                       5.461378289657296e-25
                                       -1.1892113417733203e-25
                                       2.6201509773400816e-26
                                       -5.836810774255686e-27
                                       1.3137435000805957e-27
                                       -2.9858146225103804e-28
                                       6.848390471334604e-29
                                       -1.5844015682224767e-29
                                       3.695641006570938e-30
                                       -8.687115921144669e-31
                                       2.0570808461587635e-31
                                       -4.9052257611162255e-32)))
      (bt12cs
       (make-array 39
                   :element-type 'double-float
                   :initial-contents '(0.7382386012874298
                                       -0.0033361113174483906
                                       6.146345488804697e-5
                                       -2.4024585161602376e-6
                                       1.4663555577509747e-7
                                       -1.1841917305589181e-8
                                       1.1574198963919197e-9
                                       -1.3001161129439188e-10
                                       1.6245391141361733e-11
                                       -2.2089636821403188e-12
                                       3.218030425855318e-13
                                       -4.965314793276848e-14
                                       8.043890043284782e-15
                                       -1.3589121310161292e-15
                                       2.3810504397147215e-16
                                       -4.3081466363849105e-17
                                       8.0202544032771e-18
                                       -1.5316310642462312e-18
                                       2.9928606352715567e-19
                                       -5.970996465808544e-20
                                       1.2140289669415186e-20
                                       -2.511511469661295e-21
                                       5.279056717032874e-22
                                       -1.1260509227550498e-22
                                       2.4348277359576326e-23
                                       -5.33172612369318e-24
                                       1.1813615059707122e-24
                                       -2.646536828335352e-25
                                       5.99033940413615e-26
                                       -1.3690854630829503e-26
                                       3.1576790154380228e-27
                                       -7.345791508208436e-28
                                       1.7228081480722747e-28
                                       -4.0716907961286507e-29
                                       9.693474513677962e-30
                                       -2.3237636337765716e-30
                                       5.607451067352203e-31
                                       -1.3616465391539005e-31
                                       3.3263109233894654e-32)))
      (bm12cs
       (make-array 40
                   :element-type 'double-float
                   :initial-contents '(0.0980797915623305 0.0011509611895046852
                                       -4.312482164338206e-6
                                       5.951839610088816e-8
                                       -1.7048440198269098e-9
                                       7.798265413611109e-11
                                       -4.958986126766416e-12
                                       4.0384324164211416e-13
                                       -3.993046163725175e-14
                                       4.619886183118967e-15
                                       -6.089208019095383e-16
                                       8.960930916433877e-17
                                       -1.4496294239420233e-17
                                       2.546463158537776e-18
                                       -4.809472874647837e-19
                                       9.687684668292599e-20
                                       -2.067213372277966e-20
                                       4.6466515591503845e-21
                                       -1.0949661288483342e-21
                                       2.693892797288683e-22
                                       -6.894992910930374e-23
                                       1.830268262752063e-23
                                       -5.0250642463519166e-24
                                       1.423545194454806e-24
                                       -4.15219120361645e-25
                                       1.2446092015039794e-25
                                       -3.8273363705693045e-26
                                       1.2055913578156175e-26
                                       -3.884536246376488e-27
                                       1.2786895287204098e-27
                                       -4.295146689447946e-28
                                       1.4706891178290709e-28
                                       -5.128315665106074e-29
                                       1.8195095854711694e-29
                                       -6.563031314841981e-30
                                       2.4048989769199608e-30
                                       -8.945966744690612e-31
                                       3.376085160657231e-31
                                       -1.2917914546206564e-31
                                       5.008634462958811e-32)))
      (bth1cs
       (make-array 44
                   :element-type 'double-float
                   :initial-contents '(0.7474995720358728 -0.001240077714465171
                                       9.925244240442453e-6
                                       -2.030369073715971e-7
                                       7.535961770569089e-9
                                       -4.166161271534355e-10
                                       3.070161807083489e-11
                                       -2.817849963760521e-12
                                       3.0790696739040297e-13
                                       -3.8803300262803433e-14
                                       5.509603960863091e-15
                                       -8.659006076838378e-16
                                       1.4856049141536748e-16
                                       -2.7519529815904085e-17
                                       5.455079609048109e-18
                                       -1.1486534501983643e-18
                                       2.55352133779739e-19
                                       -5.962149019741345e-20
                                       1.4556622902372717e-20
                                       -3.702218542245054e-21
                                       9.776307412534536e-22
                                       -2.6726821639668487e-22
                                       7.545330038498327e-23
                                       -2.1947899919802746e-23
                                       6.564839462395526e-24
                                       -2.0155604298370206e-24
                                       6.341776855677614e-25
                                       -2.0419277885337895e-25
                                       6.719146422072056e-26
                                       -2.2569079110207573e-26
                                       7.72977198929897e-27
                                       -2.696744451229464e-27
                                       9.57493445185027e-28
                                       -3.4569168448890113e-28
                                       1.2681234817398437e-28
                                       -4.7232536630722637e-29
                                       1.7850008478186376e-29
                                       -6.84043610045104e-30
                                       2.656602867172042e-30
                                       -1.0450402527914452e-30
                                       4.161829082537715e-31
                                       -1.6771639203643716e-31
                                       6.836199777666439e-32
                                       -2.817224786123364e-32)))
      (pi4 0.7853981633974483)
      (first$ nil))
  (declare (type (integer) nbm1 nbt12 nbm12 nbth1)
           (type (double-float) xmax pi4)
           (type (simple-array double-float (37)) bm1cs)
           (type (simple-array double-float (39)) bt12cs)
           (type (simple-array double-float (40)) bm12cs)
           (type (simple-array double-float (44)) bth1cs)
           (type f2cl-lib:logical first$))
  (setq first$ f2cl-lib:%true%)
  (defun d9b1mp (x ampl theta)
    (declare (type (double-float) theta ampl x))
    (prog ((z 0.0) (eta 0.0f0))
      (declare (type (single-float) eta) (type (double-float) z))
      (cond
        (first$
         (setf eta (* 0.1f0 (f2cl-lib:freal (f2cl-lib:d1mach 3))))
         (setf nbm1 (initds bm1cs 37 eta))
         (setf nbt12 (initds bt12cs 39 eta))
         (setf nbm12 (initds bm12cs 40 eta))
         (setf nbth1 (initds bth1cs 44 eta))
         (setf xmax (/ 1.0 (f2cl-lib:d1mach 4)))))
      (setf first$ f2cl-lib:%false%)
      (cond
        ((< x 4.0)
         (xermsg "SLATEC" "D9B1MP" "X must be  >=  4" 1 2)
         (setf ampl 0.0)
         (setf theta 0.0))
        ((<= x 8.0)
         (setf z (/ (- (/ 128.0 (* x x)) 5.0) 3.0))
         (setf ampl (/ (+ 0.75 (dcsevl z bm1cs nbm1)) (f2cl-lib:fsqrt x)))
         (setf theta (+ (- x (* 3.0 pi4)) (/ (dcsevl z bt12cs nbt12) x))))
        (t
         (if (> x xmax)
             (xermsg "SLATEC" "D9B1MP" "No precision because X is too big" 2 2))
         (setf z (- (/ 128.0 (* x x)) 1.0))
         (setf ampl (/ (+ 0.75 (dcsevl z bm12cs nbm12)) (f2cl-lib:fsqrt x)))
         (setf theta (+ (- x (* 3.0 pi4)) (/ (dcsevl z bth1cs nbth1) x)))))
      (go end_label)
     end_label
      (return (values nil ampl theta)))))

(in-package #-gcl #:cl-user #+gcl "CL-USER")
#+#.(cl:if (cl:find-package '#:f2cl) '(and) '(or))
(eval-when (:load-toplevel :compile-toplevel :execute)
  (setf (gethash 'fortran-to-lisp::d9b1mp
                 fortran-to-lisp::*f2cl-function-info*)
          (fortran-to-lisp::make-f2cl-finfo
           :arg-types '((double-float) (double-float) (double-float))
           :return-values '(nil fortran-to-lisp::ampl fortran-to-lisp::theta)
           :calls '(fortran-to-lisp::dcsevl fortran-to-lisp::xermsg
                    fortran-to-lisp::initds fortran-to-lisp::d1mach))))

