(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_2592 () (_ BitVec 8))
(assert (let ((?v_1 ((_ zero_extend 24) T1_2592)) (?v_0 ((_ zero_extend 8) T1_2592))) (and true (= ?v_0 (_ bv0 16)) (= (bvsub ?v_1 (_ bv47 32)) (_ bv0 32)) (= ?v_0 (_ bv47 16)) (= ?v_1 (_ bv47 32)) (bvult (_ bv46 32) ?v_1))))
(check-sat)
(exit)
