(set-logic QF_FP)
(declare-fun x0 () (_ FloatingPoint 3 4))
(check-sat)
(assert (= (fp.sqrt RNE x0) (fp.sqrt RNE (fp #b0 #b000 #b001))))
(check-sat)
