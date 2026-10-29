(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_139 () (_ BitVec 8))
(declare-fun T1_138 () (_ BitVec 8))
(assert (let ((?v_6 (bvand ((_ zero_extend 24) T1_139) (_ bv63 32))) (?v_2 ((_ zero_extend 24) (_ bv20 8))) (?v_0 ((_ zero_extend 24) (_ bv8 8)))) (let ((?v_1 (bvshl (bvand (bvadd (bvshl ((_ zero_extend 24) T1_138) ((_ zero_extend 24) (_ bv4 8))) (_ bv9 32)) (_ bv63 32)) ?v_0))) (let ((?v_4 (bvand (bvadd ?v_1 (_ bv3145737 32)) (_ bv4293918720 32)))) (let ((?v_5 (bvashr (bvadd ?v_4 (_ bv14089 32)) ?v_2)) (?v_3 (bvashr (bvadd ?v_1 (_ bv2097161 32)) ?v_2))) (and true (bvsle (bvashr (bvadd (bvadd (bvand (bvadd ?v_4 (_ bv1062665 32)) (_ bv4293918720 32)) (bvshl ?v_6 ?v_0)) (_ bv9 32)) ?v_2) (_ bv1 32)) (bvslt (_ bv0 32) ?v_3) (bvslt (_ bv1 32) ?v_3) (bvslt (_ bv0 32) ?v_5) (bvslt (_ bv1 32) ?v_5) (= ?v_6 (_ bv56 32)) (not (= ?v_6 (_ bv33 32))) (not (= ?v_6 (_ bv32 32)))))))))
(check-sat)
(exit)
