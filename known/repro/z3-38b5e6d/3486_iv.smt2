(declare-fun a () Int)
(assert (= (div 1 a 2) (bv2nat ((_ int2bv 7) a))))
(check-sat)
