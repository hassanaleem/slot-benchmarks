(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
We verify the correctness of a signed multiplication
overflow detection unit, which is described in
"Combined Unsigned and Two's Complement Saturating Multipliers"
by M. Schulte et al.

Bit-width: 8

Contributed by Robert Brummayer (robert.brummayer@gmail.com).
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun v1 () (_ BitVec 8))
(declare-fun v2 () (_ BitVec 8))
(assert (let ((?v_11 ((_ extract 7 7) v1))) (let ((?v_22 (= (_ bv1 1) ?v_11)) (?v_13 ((_ extract 7 7) v2))) (let ((?v_23 (= (_ bv1 1) ?v_13))) (let ((?v_2 (bvmul (concat (ite ?v_22 (_ bv255 8) (_ bv0 8)) v1) (concat (ite ?v_23 (_ bv255 8) (_ bv0 8)) v2))) (?v_3 (bvadd (bvnot (_ bv128 16)) (_ bv1 16)))) (let ((?v_0 ((_ extract 15 15) ?v_2)) (?v_4 ((_ extract 15 15) ?v_3)) (?v_8 ((_ extract 14 0) ?v_2))) (let ((?v_5 (ite (bvult ?v_8 ((_ extract 14 0) ?v_3)) (_ bv1 1) (_ bv0 1))) (?v_1 (bvnot ?v_4)) (?v_6 (bvnot ?v_0)) (?v_9 ((_ extract 15 15) (_ bv128 16))) (?v_10 (ite (bvult ?v_8 ((_ extract 14 0) (_ bv128 16))) (_ bv1 1) (_ bv0 1)))) (let ((?v_7 (bvnot ?v_9)) (?v_12 (concat (ite (= (_ bv1 1) ((_ extract 0 0) ?v_11)) (_ bv127 7) (_ bv0 7)) ?v_11)) (?v_14 (concat (ite (= (_ bv1 1) ((_ extract 0 0) ?v_13)) (_ bv127 7) (_ bv0 7)) ?v_13))) (let ((?v_15 (bvand (bvnot (bvand (bvnot v1) (bvnot ?v_12))) (bvnot (bvand v1 ?v_12)))) (?v_17 (bvand (bvnot (bvand (bvnot v2) (bvnot ?v_14))) (bvnot (bvand v2 ?v_14))))) (let ((?v_16 ((_ extract 6 6) ?v_17))) (let ((?v_18 (bvand (bvnot ?v_16) (bvnot ((_ extract 5 5) ?v_17))))) (let ((?v_19 (bvand ?v_18 (bvnot ((_ extract 4 4) ?v_17))))) (let ((?v_20 (bvand ?v_19 (bvnot ((_ extract 3 3) ?v_17))))) (let ((?v_21 (bvand ?v_20 (bvnot ((_ extract 2 2) ?v_17)))) (?v_24 (bvmul (concat (ite ?v_22 (_ bv1 1) (_ bv0 1)) v1) (concat (ite ?v_23 (_ bv1 1) (_ bv0 1)) v2)))) (not (= (bvnot (ite (= (bvnot (bvand (bvand (bvnot (bvand ?v_0 ?v_1)) (bvand (bvnot (bvand (bvand ?v_6 ?v_1) ?v_5)) (bvnot (bvand (bvand ?v_0 ?v_4) ?v_5)))) (bvnot (bvand (bvnot (bvand ?v_0 ?v_7)) (bvand (bvnot (bvand (bvand ?v_6 ?v_7) ?v_10)) (bvnot (bvand (bvand ?v_0 ?v_9) ?v_10))))))) (bvnot (bvand (bvand (bvand (bvand (bvand (bvand (bvnot (bvand ((_ extract 1 1) ?v_15) ?v_16)) (bvnot (bvand ((_ extract 2 2) ?v_15) (bvnot ?v_18)))) (bvnot (bvand ((_ extract 3 3) ?v_15) (bvnot ?v_19)))) (bvnot (bvand ((_ extract 4 4) ?v_15) (bvnot ?v_20)))) (bvnot (bvand ((_ extract 5 5) ?v_15) (bvnot ?v_21)))) (bvnot (bvand ((_ extract 6 6) ?v_15) (bvnot (bvand ?v_21 (bvnot ((_ extract 1 1) ?v_17))))))) (ite (= ((_ extract 8 8) ?v_24) ((_ extract 7 7) ?v_24)) (_ bv1 1) (_ bv0 1))))) (_ bv1 1) (_ bv0 1))) (_ bv0 1)))))))))))))))))
(check-sat)
(exit)
