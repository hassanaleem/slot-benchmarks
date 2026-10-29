(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_189 () (_ BitVec 8))
(declare-fun T1_193 () (_ BitVec 8))
(assert (let ((?v_2 ((_ zero_extend 24) (_ bv20 8))) (?v_0 ((_ zero_extend 24) (_ bv8 8)))) (let ((?v_1 (bvshl (bvand (bvadd (bvshl ((_ zero_extend 24) T1_189) ((_ zero_extend 24) (_ bv2 8))) (_ bv2 32)) (_ bv127 32)) ?v_0))) (and true (bvsle (bvashr (bvadd (bvadd (bvand (bvadd ?v_1 (_ bv3145737 32)) (_ bv4293918720 32)) (bvshl (bvand (bvadd (bvshl ((_ zero_extend 24) T1_193) ((_ zero_extend 24) (_ bv6 8))) (_ bv51 32)) (_ bv127 32)) ?v_0)) (_ bv9 32)) ?v_2) (_ bv0 32)) (bvslt (_ bv0 32) (bvashr (bvadd ?v_1 (_ bv2097161 32)) ?v_2))))))
(check-sat)
(exit)
