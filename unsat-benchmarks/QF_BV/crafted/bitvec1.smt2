(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Hand-crafted bit-vector benchmarks.  Some are from the SVC benchmark suite.
Contributed by Vijay Ganesh (vganesh@stanford.edu).  Translated into SMT-LIB
format by Clark Barrett using CVC3.

|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun a () (_ BitVec 32))
(declare-fun b () (_ BitVec 32))
(declare-fun c () (_ BitVec 32))
(declare-fun res () (_ BitVec 32))
(assert (let ((?v_1 (= ((_ extract 0 0) a) (_ bv1 1))) (?v_2 (= ((_ extract 0 0) b) (_ bv1 1))) (?v_0 ((_ extract 0 0) c))) (let ((?v_6 (= ?v_0 (_ bv1 1))) (?v_3 ((_ extract 0 0) res)) (?v_4 (= ((_ extract 1 1) a) (_ bv1 1))) (?v_5 (= ((_ extract 1 1) b) (_ bv1 1)))) (let ((?v_8 (ite ?v_4 (not ?v_5) ?v_5)) (?v_7 ((_ extract 1 1) c)) (?v_9 ((_ extract 1 1) res))) (not (=> (and (and (and (= ((_ extract 1 0) a) (_ bv1 2)) (= ((_ extract 1 0) b) (_ bv1 2))) (and (ite (and ?v_1 ?v_2) ?v_6 (= ?v_0 (_ bv0 1))) (ite (ite ?v_1 (not ?v_2) ?v_2) (= ?v_3 (_ bv1 1)) (= ?v_3 (_ bv0 1))))) (and (ite (or (and ?v_4 ?v_5) (and ?v_8 ?v_6)) (= ?v_7 (_ bv1 1)) (= ?v_7 (_ bv0 1))) (ite (ite ?v_6 (not ?v_8) ?v_8) (= ?v_9 (_ bv1 1)) (= ?v_9 (_ bv0 1))))) (and (= ((_ extract 1 0) res) (_ bv2 2)) (= ((_ extract 1 0) c) (_ bv1 2)))))))))
(check-sat)
(exit)
