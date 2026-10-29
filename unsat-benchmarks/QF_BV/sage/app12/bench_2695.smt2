(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_10424 () (_ BitVec 8))
(assert (let ((?v_0 ((_ zero_extend 24) T1_10424)) (?v_1 ((_ sign_extend 8) T1_10424))) (and true (not (= (_ bv91 32) ?v_0)) (bvult (_ bv25 32) (bvsub ?v_0 (_ bv97 32))) (bvult ?v_1 (_ bv256 16)) (not (= ?v_1 (_ bv47 16))) (not (= ?v_1 (_ bv92 16))) (not (= ?v_1 (_ bv37 16))) (bvult ?v_1 (_ bv128 16)) (not (= ?v_1 (_ bv0 16))) (= ?v_0 (_ bv91 32)) (not (= T1_10424 (_ bv92 8))) (not (= T1_10424 (_ bv0 8))))))
(check-sat)
(exit)
