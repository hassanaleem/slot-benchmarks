(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Hand-crafted bit-vector benchmarks.  Some are from the SVC benchmark suite.
Contributed by Vijay Ganesh (vganesh@stanford.edu).  Translated into SMT-LIB
format by Clark Barrett using CVC3.

|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun e () (_ BitVec 32))
(declare-fun a () (_ BitVec 32))
(declare-fun c () (_ BitVec 32))
(declare-fun b () (_ BitVec 32))
(assert (let ((?v_2 ((_ extract 7 0) a)) (?v_0 ((_ extract 1 0) c)) (?v_1 ((_ extract 1 0) b))) (not (and (=> (= ((_ extract 15 0) e) ((_ extract 23 8) e)) (= ((_ extract 5 2) e) ((_ extract 21 18) e))) (=> (and (= ?v_2 (concat (concat (concat ?v_0 ?v_1) ?v_0) ?v_1)) (= ((_ extract 31 0) c) (concat (concat (concat ?v_2 ?v_2) ?v_2) ?v_2))) (= ((_ extract 11 8) c) ((_ extract 31 28) c)))))))
(check-sat)
(exit)
