(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Hand-crafted bit-vector benchmarks.  Some are from the SVC benchmark suite.
Contributed by Vijay Ganesh (vganesh@stanford.edu).  Translated into SMT-LIB
format by Clark Barrett using CVC3.

|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun x () (_ BitVec 1))
(declare-fun y () (_ BitVec 1))
(declare-fun z () (_ BitVec 1))
(declare-fun a () Bool)
(assert (let ((?v_0 (= x (bvadd y z)))) (not (=> (and ?v_0 (= (bvadd (concat (_ bv0 2) x) (bvadd (concat (_ bv0 2) y) (concat (_ bv0 2) z))) (ite a (_ bv7 3) (_ bv0 3)))) ?v_0))))
(check-sat)
(exit)
