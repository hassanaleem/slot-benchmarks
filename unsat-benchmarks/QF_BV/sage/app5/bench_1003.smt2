(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T2_31367 () (_ BitVec 16))
(declare-fun T1_31367 () (_ BitVec 8))
(declare-fun T1_31368 () (_ BitVec 8))
(assert (let ((?v_0 ((_ zero_extend 16) T2_31367))) (and true (= T2_31367 (bvor (bvshl ((_ zero_extend 8) T1_31368) (_ bv8 16)) ((_ zero_extend 8) T1_31367))) (bvult (_ bv11 32) (bvsub ?v_0 (_ bv1 32))) (bvule (bvsub ?v_0 ((_ zero_extend 24) (_ bv1 8))) (_ bv12 32)) (not (= ?v_0 (_ bv13 32))) (not (= ?v_0 (_ bv4 32))) (not (= ?v_0 (_ bv7 32))) (not (= ?v_0 (_ bv1 32))))))
(check-sat)
(exit)
