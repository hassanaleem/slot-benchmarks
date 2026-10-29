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
(declare-fun c1 () (_ BitVec 32))
(declare-fun c2 () (_ BitVec 32))
(declare-fun out () (_ BitVec 32))
(declare-fun carry () (_ BitVec 32))
(assert (let ((?v_0 ((_ extract 1 0) b)) (?v_1 ((_ extract 2 0) c1)) (?v_3 (concat (_ bv0 1) (_ bv0 2))) (?v_2 ((_ extract 2 0) c2)) (?v_4 (= ((_ extract 0 0) c1) (_ bv1 1))) (?v_5 (= ((_ extract 0 0) c2) (_ bv1 1))) (?v_6 ((_ extract 0 0) carry)) (?v_7 ((_ extract 1 1) c1))) (let ((?v_11 (= ?v_7 (_ bv1 1))) (?v_8 ((_ extract 1 1) c2))) (let ((?v_10 (= ?v_8 (_ bv0 1))) (?v_9 (= ?v_7 (_ bv0 1))) (?v_12 (= ?v_8 (_ bv1 1)))) (let ((?v_14 (or (and ?v_11 ?v_10) (and ?v_9 ?v_12))) (?v_13 (= ?v_6 (_ bv1 1))) (?v_15 ((_ extract 1 1) carry)) (?v_16 ((_ extract 2 2) c1))) (let ((?v_20 (= ?v_16 (_ bv1 1))) (?v_17 ((_ extract 2 2) c2))) (let ((?v_19 (= ?v_17 (_ bv0 1))) (?v_18 (= ?v_16 (_ bv0 1))) (?v_21 (= ?v_17 (_ bv1 1))) (?v_22 (= ?v_15 (_ bv1 1)))) (not (=> (and (= ((_ extract 1 0) a) (_ bv3 2)) (= ?v_0 (_ bv3 2))) (=> (and (and (and (and (and (and (and (ite (= ((_ extract 0 0) a) (_ bv1 1)) (= ?v_1 (concat (_ bv0 1) ?v_0)) (= ?v_1 ?v_3)) (ite (= ((_ extract 1 1) a) (_ bv1 1)) (= ?v_2 (concat ?v_0 (_ bv0 1))) (= ?v_2 ?v_3))) (= ((_ extract 0 0) out) (ite (or ?v_4 ?v_5) (_ bv1 1) (_ bv0 1)))) (= ?v_6 (ite (and ?v_4 ?v_5) (_ bv1 1) (_ bv0 1)))) (= ((_ extract 1 1) out) (ite (or (and (= ?v_6 (_ bv0 1)) ?v_14) (and ?v_13 (and ?v_9 ?v_10))) (_ bv1 1) (_ bv0 1)))) (= ?v_15 (ite (or (and ?v_11 ?v_12) (and ?v_13 ?v_14)) (_ bv1 1) (_ bv0 1)))) (= ((_ extract 2 2) out) (ite (or (and (= ?v_15 (_ bv0 1)) (or (and ?v_20 ?v_19) (and ?v_18 ?v_21))) (and ?v_22 (and ?v_18 ?v_19))) (_ bv1 1) (_ bv0 1)))) (= ((_ extract 2 2) carry) (ite (or (and ?v_20 ?v_21) (and ?v_22 (or ?v_20 ?v_21))) (_ bv1 1) (_ bv0 1)))) (and (= ((_ extract 2 0) out) (_ bv1 3)) (= ((_ extract 2 0) carry) (_ bv6 3)))))))))))))
(check-sat)
(exit)
