(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_118 () (_ BitVec 8))
(assert (let ((?v_0 (bvand T1_118 (_ bv128 8)))) (let ((?v_1 (bvsub ((_ zero_extend 24) (_ bv0 8)) (bvsub (_ bv0 32) ((_ zero_extend 24) (ite (bvult (_ bv0 8) ?v_0) (_ bv1 8) (_ bv0 8))))))) (and true (not (= ?v_0 (_ bv0 8))) (= ?v_1 (_ bv0 32)) (not (= ?v_1 (_ bv1 32))) (not (= (bvand T1_118 (_ bv64 8)) (_ bv0 8)))))))
(check-sat)
(exit)
