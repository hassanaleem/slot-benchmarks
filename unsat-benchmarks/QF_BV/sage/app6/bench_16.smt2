(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_31037 () (_ BitVec 8))
(assert (and true (not (= (bvsub ((_ zero_extend 24) T1_31037) (_ bv45 32)) (_ bv0 32))) (= (_ bv45 16) ((_ zero_extend 8) T1_31037))))
(check-sat)
(exit)
