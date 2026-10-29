(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_138 () (_ BitVec 8))
(assert (let ((?v_1 ((_ zero_extend 24) (_ bv20 8))) (?v_0 (bvshl (bvand (bvadd (bvshl ((_ zero_extend 24) T1_138) ((_ zero_extend 24) (_ bv4 8))) (_ bv9 32)) (_ bv63 32)) ((_ zero_extend 24) (_ bv8 8))))) (let ((?v_2 (bvashr (bvadd ?v_0 (_ bv2097161 32)) ?v_1))) (and true (bvsle (bvashr (bvadd (bvand (bvadd ?v_0 (_ bv3145737 32)) (_ bv4293918720 32)) (_ bv14089 32)) ?v_1) (_ bv1 32)) (bvslt (_ bv0 32) ?v_2) (bvslt (_ bv1 32) ?v_2)))))
(check-sat)
(exit)
