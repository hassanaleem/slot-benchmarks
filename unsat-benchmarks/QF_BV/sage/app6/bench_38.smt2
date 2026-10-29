(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_30925 () (_ BitVec 8))
(assert (let ((?v_0 ((_ zero_extend 8) T1_30925))) (and true (= ((_ zero_extend 24) T1_30925) (_ bv70 32)) (not (= ?v_0 (_ bv123 16))) (= (_ bv77 16) ?v_0) (not (= (_ bv70 16) ?v_0)))))
(check-sat)
(exit)
