(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
We verify the correctness of a signed multiplication
overflow detection unit, which is described in
"Combined Unsigned and Two's Complement Saturating Multipliers"
by M. Schulte et al.

Bit-width: 16

Contributed by Robert Brummayer (robert.brummayer@gmail.com).
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun v1 () (_ BitVec 16))
(declare-fun v2 () (_ BitVec 16))
(assert (let ((?v_11 ((_ extract 15 15) v1))) (let ((?v_30 (= (_ bv1 1) ?v_11)) (?v_13 ((_ extract 15 15) v2))) (let ((?v_31 (= (_ bv1 1) ?v_13))) (let ((?v_2 (bvmul (concat (ite ?v_30 (_ bv65535 16) (_ bv0 16)) v1) (concat (ite ?v_31 (_ bv65535 16) (_ bv0 16)) v2))) (?v_3 (bvadd (bvnot (_ bv32768 32)) (_ bv1 32)))) (let ((?v_0 ((_ extract 31 31) ?v_2)) (?v_4 ((_ extract 31 31) ?v_3)) (?v_8 ((_ extract 30 0) ?v_2))) (let ((?v_5 (ite (bvult ?v_8 ((_ extract 30 0) ?v_3)) (_ bv1 1) (_ bv0 1))) (?v_1 (bvnot ?v_4)) (?v_6 (bvnot ?v_0)) (?v_9 ((_ extract 31 31) (_ bv32768 32))) (?v_10 (ite (bvult ?v_8 ((_ extract 30 0) (_ bv32768 32))) (_ bv1 1) (_ bv0 1)))) (let ((?v_7 (bvnot ?v_9)) (?v_12 (concat (ite (= (_ bv1 1) ((_ extract 0 0) ?v_11)) (_ bv32767 15) (_ bv0 15)) ?v_11)) (?v_14 (concat (ite (= (_ bv1 1) ((_ extract 0 0) ?v_13)) (_ bv32767 15) (_ bv0 15)) ?v_13))) (let ((?v_15 (bvand (bvnot (bvand (bvnot v1) (bvnot ?v_12))) (bvnot (bvand v1 ?v_12)))) (?v_17 (bvand (bvnot (bvand (bvnot v2) (bvnot ?v_14))) (bvnot (bvand v2 ?v_14))))) (let ((?v_16 ((_ extract 14 14) ?v_17))) (let ((?v_18 (bvand (bvnot ?v_16) (bvnot ((_ extract 13 13) ?v_17))))) (let ((?v_19 (bvand ?v_18 (bvnot ((_ extract 12 12) ?v_17))))) (let ((?v_20 (bvand ?v_19 (bvnot ((_ extract 11 11) ?v_17))))) (let ((?v_21 (bvand ?v_20 (bvnot ((_ extract 10 10) ?v_17))))) (let ((?v_22 (bvand ?v_21 (bvnot ((_ extract 9 9) ?v_17))))) (let ((?v_23 (bvand ?v_22 (bvnot ((_ extract 8 8) ?v_17))))) (let ((?v_24 (bvand ?v_23 (bvnot ((_ extract 7 7) ?v_17))))) (let ((?v_25 (bvand ?v_24 (bvnot ((_ extract 6 6) ?v_17))))) (let ((?v_26 (bvand ?v_25 (bvnot ((_ extract 5 5) ?v_17))))) (let ((?v_27 (bvand ?v_26 (bvnot ((_ extract 4 4) ?v_17))))) (let ((?v_28 (bvand ?v_27 (bvnot ((_ extract 3 3) ?v_17))))) (let ((?v_29 (bvand ?v_28 (bvnot ((_ extract 2 2) ?v_17)))) (?v_32 (bvmul (concat (ite ?v_30 (_ bv1 1) (_ bv0 1)) v1) (concat (ite ?v_31 (_ bv1 1) (_ bv0 1)) v2)))) (not (= (bvnot (ite (= (bvnot (bvand (bvand (bvnot (bvand ?v_0 ?v_1)) (bvand (bvnot (bvand (bvand ?v_6 ?v_1) ?v_5)) (bvnot (bvand (bvand ?v_0 ?v_4) ?v_5)))) (bvnot (bvand (bvnot (bvand ?v_0 ?v_7)) (bvand (bvnot (bvand (bvand ?v_6 ?v_7) ?v_10)) (bvnot (bvand (bvand ?v_0 ?v_9) ?v_10))))))) (bvnot (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvnot (bvand ((_ extract 1 1) ?v_15) ?v_16)) (bvnot (bvand ((_ extract 2 2) ?v_15) (bvnot ?v_18)))) (bvnot (bvand ((_ extract 3 3) ?v_15) (bvnot ?v_19)))) (bvnot (bvand ((_ extract 4 4) ?v_15) (bvnot ?v_20)))) (bvnot (bvand ((_ extract 5 5) ?v_15) (bvnot ?v_21)))) (bvnot (bvand ((_ extract 6 6) ?v_15) (bvnot ?v_22)))) (bvnot (bvand ((_ extract 7 7) ?v_15) (bvnot ?v_23)))) (bvnot (bvand ((_ extract 8 8) ?v_15) (bvnot ?v_24)))) (bvnot (bvand ((_ extract 9 9) ?v_15) (bvnot ?v_25)))) (bvnot (bvand ((_ extract 10 10) ?v_15) (bvnot ?v_26)))) (bvnot (bvand ((_ extract 11 11) ?v_15) (bvnot ?v_27)))) (bvnot (bvand ((_ extract 12 12) ?v_15) (bvnot ?v_28)))) (bvnot (bvand ((_ extract 13 13) ?v_15) (bvnot ?v_29)))) (bvnot (bvand ((_ extract 14 14) ?v_15) (bvnot (bvand ?v_29 (bvnot ((_ extract 1 1) ?v_17))))))) (ite (= ((_ extract 16 16) ?v_32) ((_ extract 15 15) ?v_32)) (_ bv1 1) (_ bv0 1))))) (_ bv1 1) (_ bv0 1))) (_ bv0 1)))))))))))))))))))))))))
(check-sat)
(exit)
