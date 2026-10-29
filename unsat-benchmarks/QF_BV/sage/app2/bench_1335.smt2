(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T1_96 () (_ BitVec 8))
(declare-fun T1_95 () (_ BitVec 8))
(declare-fun T1_94 () (_ BitVec 8))
(assert (let ((?v_0 ((_ zero_extend 24) (_ bv8 8)))) (and true (not (= (bvand (bvor (bvshl (bvor (bvshl (bvor ((_ zero_extend 24) T1_94) (_ bv4294967040 32)) ?v_0) ((_ zero_extend 24) T1_95)) ?v_0) ((_ zero_extend 24) T1_96)) (_ bv4278190080 32)) (_ bv4278190080 32))))))
(check-sat)
(exit)
