(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun e () Real)
(declare-fun f () Real)
(declare-fun g () Real)
(declare-fun h () Real)
(declare-fun i () Real)
(declare-fun j () Real)
(declare-fun k () Real)
(assert
  (not
    (exists
      ((l Real))
      (=>
        (and
          (=
            (<= 0 l)
            (>= (+ (* e l) (/ c j)) 0)
          )
          (>= (/ b i) 0)
        )
        (<=
          (- d g)
          (*
            (/ 1 2)
            (+
              (* e (* (/ b i) (/ b i)))
              (* (* 2 (/ b i)) k)
              (* 2 (- d g))
            )
          )
        )
      )
    )
  )
)
(assert (= h (/ a e) (* f f)))
(assert (= k (/ c j) (/ c k)))
(check-sat)
(get-model)
