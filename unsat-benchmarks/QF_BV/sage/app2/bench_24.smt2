(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_203 () (_ BitVec 8))
(assert (and true (bvsle (bvashr (bvadd (bvshl (bvand ((_ zero_extend 24) T1_203) (_ bv255 32)) ((_ zero_extend 24) (_ bv8 8))) (_ bv2097162 32)) ((_ zero_extend 24) (_ bv20 8))) (_ bv0 32))))
(check-sat)
(exit)
