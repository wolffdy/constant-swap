(declare-fun a () String)
(declare-fun b () String)
(declare-fun c () String)
(assert
 (or
  (str.contains "abc23cd"
   (str.++ (int.to.str (str.len c))
    (int.to.str (str.len c))
    (int.to.str (str.len c))))
  (str.contains (str.++ a b) (str.++ a "a" b))))
(check-sat)
