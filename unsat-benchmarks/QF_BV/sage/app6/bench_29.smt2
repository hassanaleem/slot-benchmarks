(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_30933 () (_ BitVec 8))
(assert (let ((?v_1 ((_ zero_extend 8) T1_30933)) (?v_0 ((_ zero_extend 24) T1_30933))) (and true (not (= (bvsub ?v_0 (_ bv76 32)) (_ bv0 32))) (not (= (bvsub ?v_0 (_ bv67 32)) (_ bv0 32))) (not (= ?v_0 (_ bv99 32))) (bvsle ?v_0 (_ bv99 32)) (= (_ bv76 16) ?v_1) (not (= (_ bv109 16) ?v_1)) (not (= (_ bv77 16) ?v_1)))))
(check-sat)
(exit)
