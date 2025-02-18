(set-logic ALL)
(declare-datatypes ((SBVTuple2 2)) ((par (T1 T2)
                                    ((mkSBVTuple2 (proj_1_SBVTuple2 T1)
                                                  (proj_2_SBVTuple2 T2))))))
(declare-datatypes ((SBVMaybe 1)) ((par (T)
                                    ((nothing_SBVMaybe)
                                     (just_SBVMaybe (get_just_SBVMaybe T))))))
(define-fun s3 () Int 3)
(define-fun s6 () Int 0)
(define-fun s14 () Int 1)
(define-fun s67 () (SBVMaybe Int) (as nothing_SBVMaybe (SBVMaybe Int)))
(declare-fun s0 () (Seq (SBVTuple2 Int Int)))
(declare-fun s1 () Int)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Assert the value reported in the model:
;(assert (= s1 2275))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-fun s2 () Int (seq.len s0))
(define-fun s4 () Bool (<= s2 s3))
(define-fun s5 () Bool (not s4))
(define-fun s7 () Bool (= s2 s6))
(define-fun s8 () (SBVTuple2 Int Int) (mkSBVTuple2 s1 s1))
(define-fun s9 () (Seq (SBVTuple2 Int Int)) (seq.unit s8))
(define-fun s10 () (SBVTuple2 Int Int) (seq.nth s0 s6))
(define-fun s11 () Int (proj_1_SBVTuple2 s10))
(define-fun s12 () Bool (> s1 s11))
(define-fun s13 () (Seq (SBVTuple2 Int Int)) (seq.unit s10))
(define-fun s15 () Int (- s2 s14))
(define-fun s16 () (Seq (SBVTuple2 Int Int)) (seq.extract s0 s14 s15))
(define-fun s17 () Int (seq.len s16))
(define-fun s18 () Bool (= s6 s17))
(define-fun s19 () (SBVTuple2 Int Int) (seq.nth s16 s6))
(define-fun s20 () Int (proj_1_SBVTuple2 s19))
(define-fun s21 () Bool (> s1 s20))
(define-fun s22 () (Seq (SBVTuple2 Int Int)) (seq.unit s19))
(define-fun s23 () Int (- s17 s14))
(define-fun s24 () (Seq (SBVTuple2 Int Int)) (seq.extract s16 s14 s23))
(define-fun s25 () Int (seq.len s24))
(define-fun s26 () Bool (= s6 s25))
(define-fun s27 () (SBVTuple2 Int Int) (seq.nth s24 s6))
(define-fun s28 () Int (proj_1_SBVTuple2 s27))
(define-fun s29 () Bool (> s1 s28))
(define-fun s30 () (Seq (SBVTuple2 Int Int)) (seq.unit s27))
(define-fun s31 () Int (- s25 s14))
(define-fun s32 () (Seq (SBVTuple2 Int Int)) (seq.extract s24 s14 s31))
(define-fun s33 () Int (seq.len s32))
(define-fun s34 () Bool (= s6 s33))
(define-fun s35 () (SBVTuple2 Int Int) (seq.nth s32 s6))
(define-fun s36 () Int (proj_1_SBVTuple2 s35))
(define-fun s37 () Bool (> s1 s36))
(define-fun s38 () (Seq (SBVTuple2 Int Int)) (seq.unit s35))
(define-fun s39 () Bool (< s1 s36))
(define-fun s40 () (Seq (SBVTuple2 Int Int)) (seq.++ s9 s32))
(define-fun s41 () Int (- s33 s14))
(define-fun s42 () (Seq (SBVTuple2 Int Int)) (seq.extract s32 s14 s41))
(define-fun s43 () (Seq (SBVTuple2 Int Int)) (seq.++ s9 s42))
(define-fun s44 () (Seq (SBVTuple2 Int Int)) (ite s39 s40 s43))
(define-fun s45 () (Seq (SBVTuple2 Int Int)) (ite s37 s38 s44))
(define-fun s46 () (Seq (SBVTuple2 Int Int)) (ite s34 s9 s45))
(define-fun s47 () (Seq (SBVTuple2 Int Int)) (seq.++ s30 s46))
(define-fun s48 () Bool (< s1 s28))
(define-fun s49 () (Seq (SBVTuple2 Int Int)) (seq.++ s9 s24))
(define-fun s50 () (Seq (SBVTuple2 Int Int)) (ite s48 s49 s40))
(define-fun s51 () (Seq (SBVTuple2 Int Int)) (ite s29 s47 s50))
(define-fun s52 () (Seq (SBVTuple2 Int Int)) (ite s26 s9 s51))
(define-fun s53 () (Seq (SBVTuple2 Int Int)) (seq.++ s22 s52))
(define-fun s54 () Bool (< s1 s20))
(define-fun s55 () (Seq (SBVTuple2 Int Int)) (seq.++ s9 s16))
(define-fun s56 () (Seq (SBVTuple2 Int Int)) (ite s54 s55 s49))
(define-fun s57 () (Seq (SBVTuple2 Int Int)) (ite s21 s53 s56))
(define-fun s58 () (Seq (SBVTuple2 Int Int)) (ite s18 s9 s57))
(define-fun s59 () (Seq (SBVTuple2 Int Int)) (seq.++ s13 s58))
(define-fun s60 () Bool (< s1 s11))
(define-fun s61 () (Seq (SBVTuple2 Int Int)) (seq.++ s9 s0))
(define-fun s62 () (Seq (SBVTuple2 Int Int)) (ite s60 s61 s55))
(define-fun s63 () (Seq (SBVTuple2 Int Int)) (ite s12 s59 s62))
(define-fun s64 () (Seq (SBVTuple2 Int Int)) (ite s7 s9 s63))
(define-fun s65 () Int (seq.len s64))
(define-fun s66 () Bool (= s6 s65))
(define-fun s68 () (SBVTuple2 Int Int) (seq.nth s64 s6))
(define-fun s69 () Int (proj_1_SBVTuple2 s68))
(define-fun s70 () Bool (> s1 s69))
(define-fun s71 () Int (- s65 s14))
(define-fun s72 () (Seq (SBVTuple2 Int Int)) (seq.extract s64 s14 s71))
(define-fun s73 () Int (seq.len s72))
(define-fun s74 () Bool (= s6 s73))
(define-fun s75 () (SBVTuple2 Int Int) (seq.nth s72 s6))
(define-fun s76 () Int (proj_1_SBVTuple2 s75))
(define-fun s77 () Bool (> s1 s76))
(define-fun s78 () Int (- s73 s14))
(define-fun s79 () (Seq (SBVTuple2 Int Int)) (seq.extract s72 s14 s78))
(define-fun s80 () Int (seq.len s79))
(define-fun s81 () Bool (= s6 s80))
(define-fun s82 () (SBVTuple2 Int Int) (seq.nth s79 s6))
(define-fun s83 () Int (proj_1_SBVTuple2 s82))
(define-fun s84 () Bool (> s1 s83))
(define-fun s85 () Int (- s80 s14))
(define-fun s86 () (Seq (SBVTuple2 Int Int)) (seq.extract s79 s14 s85))
(define-fun s87 () Int (seq.len s86))
(define-fun s88 () Bool (= s6 s87))
(define-fun s89 () (SBVTuple2 Int Int) (seq.nth s86 s6))
(define-fun s90 () Int (proj_1_SBVTuple2 s89))
(define-fun s91 () Bool (> s1 s90))
(define-fun s92 () Bool (= s1 s90))
(define-fun s93 () Int (proj_2_SBVTuple2 s89))
(define-fun s94 () (SBVMaybe Int) ((as just_SBVMaybe (SBVMaybe Int)) s93))
(define-fun s95 () (SBVMaybe Int) (ite s92 s94 s67))
(define-fun s96 () (SBVMaybe Int) (ite s91 s67 s95))
(define-fun s97 () (SBVMaybe Int) (ite s88 s67 s96))
(define-fun s98 () Bool (= s1 s83))
(define-fun s99 () Int (proj_2_SBVTuple2 s82))
(define-fun s100 () (SBVMaybe Int) ((as just_SBVMaybe (SBVMaybe Int)) s99))
(define-fun s101 () (SBVMaybe Int) (ite s98 s100 s67))
(define-fun s102 () (SBVMaybe Int) (ite s84 s97 s101))
(define-fun s103 () (SBVMaybe Int) (ite s81 s67 s102))
(define-fun s104 () Bool (= s1 s76))
(define-fun s105 () Int (proj_2_SBVTuple2 s75))
(define-fun s106 () (SBVMaybe Int) ((as just_SBVMaybe (SBVMaybe Int)) s105))
(define-fun s107 () (SBVMaybe Int) (ite s104 s106 s67))
(define-fun s108 () (SBVMaybe Int) (ite s77 s103 s107))
(define-fun s109 () (SBVMaybe Int) (ite s74 s67 s108))
(define-fun s110 () Bool (= s1 s69))
(define-fun s111 () Int (proj_2_SBVTuple2 s68))
(define-fun s112 () (SBVMaybe Int) ((as just_SBVMaybe (SBVMaybe Int)) s111))
(define-fun s113 () (SBVMaybe Int) (ite s110 s112 s67))
(define-fun s114 () (SBVMaybe Int) (ite s70 s109 s113))
(define-fun s115 () (SBVMaybe Int) (ite s66 s67 s114))
(define-fun s116 () Bool ((_ is (nothing_SBVMaybe () (SBVMaybe Int))) s115))
(define-fun s117 () Bool (ite s116 false true))
(define-fun s118 () Bool (or s5 s117))
(assert (not s118))
(check-sat)
(get-value (s0))
(get-value (s1))

