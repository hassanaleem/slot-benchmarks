(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun T2_476 () (_ BitVec 16))
(declare-fun T1_476 () (_ BitVec 8))
(declare-fun T1_477 () (_ BitVec 8))
(assert (let ((?v_2 ((_ zero_extend 16) T2_476))) (let ((?v_0 (bvmul ?v_2 (_ bv768 32)))) (let ((?v_1 (bvadd ?v_0 ?v_0))) (let ((?v_12 (bvadd ?v_1 ?v_1))) (let ((?v_13 (bvadd ?v_12 (_ bv32 32))) (?v_7 (bvadd ?v_2 ?v_2))) (let ((?v_11 (bvadd ?v_7 ?v_7)) (?v_3 (bvmul ?v_2 (_ bv8 32)))) (let ((?v_4 (bvadd ?v_3 ?v_3))) (let ((?v_5 (bvadd ?v_4 ?v_4)) (?v_10 (bvadd ?v_11 (_ bv32 32)))) (let ((?v_9 (bvadd ?v_5 ?v_5)) (?v_8 (bvadd ?v_5 (_ bv64 32)))) (let ((?v_6 (bvadd ?v_9 (_ bv64 32)))) (and true (= T2_476 (bvor (bvshl ((_ zero_extend 8) T1_477) (_ bv8 16)) ((_ zero_extend 8) T1_476))) (bvule (_ bv2147483648 32) ?v_13) (bvult (bvsub (_ bv136 32) ?v_6) (_ bv63 32)) (bvult (bvsub (_ bv104 32) ?v_8) (_ bv63 32)) (bvult ?v_6 (_ bv2147483648 32)) (not (= ?v_6 (_ bv0 32))) (bvule ?v_6 (_ bv2147483647 32)) (bvult (bvsub (_ bv48 32) ?v_10) (_ bv63 32)) (bvult ?v_8 (_ bv2147483648 32)) (not (= ?v_8 (_ bv0 32))) (bvule ?v_8 (_ bv2147483647 32)) (bvule (_ bv4 32) ?v_9) (bvult ?v_9 (_ bv256 32)) (not (= ?v_9 (_ bv0 32))) (bvule ?v_9 (_ bv4294967231 32)) (not (= ?v_10 (_ bv0 32))) (bvule ?v_10 (_ bv2147483647 32)) (bvult (bvsub (_ bv16 32) ?v_11) (_ bv63 32)) (bvule (_ bv4 32) ?v_5) (bvult ?v_5 (_ bv256 32)) (not (= ?v_5 (_ bv0 32))) (bvule ?v_5 (_ bv4294967231 32)) (bvule ?v_11 (_ bv4294967263 32)) (bvule (_ bv4 32) ?v_11) (bvult ?v_11 (_ bv256 32)) (not (= ?v_11 (_ bv0 32))) (bvule ?v_11 (_ bv2147483647 32)) (= (bvmul ?v_2 (_ bv2 32)) (_ bv2 32)) (bvsle ?v_2 (_ bv1 32)) (bvslt (_ bv0 32) ?v_2) (not (= T2_476 (_ bv2 16))) (not (= ?v_2 (_ bv2 32))) (bvule T2_476 (_ bv2 16)) (bvule ?v_2 (_ bv2 32)) (bvult ?v_2 (_ bv9 32)) (bvule T2_476 (_ bv32 16)) (bvult (_ bv0 16) T2_476) (not (= T2_476 (_ bv0 16))) (bvule ?v_12 (_ bv4294967263 32)) (not (= ?v_13 (_ bv0 32)))))))))))))))
(check-sat)
(exit)
