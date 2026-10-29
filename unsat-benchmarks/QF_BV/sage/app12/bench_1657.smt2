(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_10495 () (_ BitVec 8))
(assert (let ((?v_0 ((_ sign_extend 8) T1_10495))) (let ((?v_1 (bvadd ((_ zero_extend 24) ((_ extract 7 0) ?v_0)) (bvshl ((_ zero_extend 24) ((_ extract 15 8) ?v_0)) (_ bv8 32))))) (let ((?v_2 (bvsub ?v_1 (_ bv97 32)))) (and true (bvule (bvsub ((_ zero_extend 24) T1_10495) (_ bv97 32)) (_ bv25 32)) (= (bvadd (bvsub (_ bv0 32) ((_ zero_extend 24) (ite (not (= (bvsub ?v_1 (_ bv78 32)) ((_ zero_extend 24) (_ bv0 8)))) (_ bv1 8) (_ bv0 8)))) ((_ zero_extend 24) (_ bv1 8))) (_ bv0 32)) (bvult ((_ zero_extend 16) (_ bv25 16)) (bvadd ((_ zero_extend 24) ((_ extract 7 0) ?v_2)) (bvshl ((_ zero_extend 24) ((_ extract 15 8) ?v_2)) (_ bv8 32)))) (not (= ?v_1 (_ bv47 32))) (not (= ?v_1 (_ bv35 32))) (not (= ?v_0 (_ bv78 16))) (not (= ?v_0 (_ bv47 16))) (= ?v_0 (_ bv46 16)) (bvult ?v_0 (_ bv256 16)) (not (= ?v_0 (_ bv0 16))) (not (= T1_10495 (_ bv0 8))))))))
(check-sat)
(exit)
