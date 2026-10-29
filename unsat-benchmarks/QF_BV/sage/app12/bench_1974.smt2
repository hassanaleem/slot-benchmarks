(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_10495 () (_ BitVec 8))
(declare-fun T1_10494 () (_ BitVec 8))
(assert (let ((?v_1 ((_ sign_extend 8) T1_10495)) (?v_0 ((_ sign_extend 8) T1_10494))) (let ((?v_3 ((_ zero_extend 24) ((_ extract 15 8) ?v_1))) (?v_2 ((_ zero_extend 24) ((_ extract 7 0) ?v_1)))) (let ((?v_4 (bvadd ?v_2 (bvshl ?v_3 (_ bv8 32))))) (let ((?v_5 (bvsub ?v_4 (_ bv97 32)))) (and true (bvslt (bvsub (bvadd (bvadd (bvadd ((_ zero_extend 24) ((_ extract 7 0) ?v_0)) (bvshl ((_ zero_extend 24) ((_ extract 15 8) ?v_0)) (_ bv8 32))) (bvshl ?v_2 (_ bv16 32))) (bvshl ?v_3 (_ bv24 32))) (_ bv65537 32)) (_ bv0 32)) (= (bvadd (bvsub (_ bv0 32) ((_ zero_extend 24) (ite (not (= (bvsub ?v_4 (_ bv78 32)) ((_ zero_extend 24) (_ bv0 8)))) (_ bv1 8) (_ bv0 8)))) ((_ zero_extend 24) (_ bv1 8))) (_ bv0 32)) (bvult ((_ zero_extend 16) (_ bv25 16)) (bvadd ((_ zero_extend 24) ((_ extract 7 0) ?v_5)) (bvshl ((_ zero_extend 24) ((_ extract 15 8) ?v_5)) (_ bv8 32)))) (not (= T1_10494 (_ bv0 8))) (not (= T1_10495 (_ bv0 8))) (= ?v_0 (_ bv47 16)) (not (= ?v_0 (_ bv0 16))) (not (= ?v_1 (_ bv78 16))) (not (= ?v_1 (_ bv47 16))) (= ?v_1 (_ bv46 16)) (bvult ?v_1 (_ bv256 16)) (not (= ?v_1 (_ bv0 16)))))))))
(check-sat)
(exit)
