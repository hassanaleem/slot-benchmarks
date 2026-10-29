(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Hand-crafted bit-vector benchmarks.  Some are from the SVC benchmark suite.
Contributed by Vijay Ganesh (vganesh@stanford.edu).  Translated into SMT-LIB
format by Clark Barrett using CVC3.

|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun a () (_ BitVec 2))
(declare-fun b () (_ BitVec 2))
(declare-fun x () (_ BitVec 4))
(declare-fun y () (_ BitVec 7))
(declare-fun c () (_ BitVec 3))
(declare-fun d () (_ BitVec 3))
(assert (not (and (=> (and (and (or (or (or (= a (_ bv0 2)) (= a (_ bv1 2))) (= a (_ bv2 2))) (= a (_ bv3 2))) (or (or (or (= b (_ bv0 2)) (= b (_ bv1 2))) (= b (_ bv2 2))) (= b (_ bv3 2)))) (= x (concat (_ bv2 2) (bvadd a b)))) (= ((_ extract 3 3) x) (_ bv1 1))) (=> (= y (concat (concat (_ bv2 3) (bvadd c d)) (_ bv1 1))) (= ((_ extract 0 0) y) (_ bv1 1))))))
(check-sat)
(exit)
