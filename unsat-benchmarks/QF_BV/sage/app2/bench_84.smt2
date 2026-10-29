(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_138 () (_ BitVec 8))
(assert (let ((?v_0 (bvashr (bvadd (bvshl (bvand (bvadd (bvshl ((_ zero_extend 24) T1_138) ((_ zero_extend 24) (_ bv4 8))) (_ bv9 32)) (_ bv63 32)) ((_ zero_extend 24) (_ bv8 8))) (_ bv2097161 32)) ((_ zero_extend 24) (_ bv20 8))))) (and true (bvsle ?v_0 (_ bv0 32)) (bvslt (_ bv1 32) ?v_0))))
(check-sat)
(exit)
