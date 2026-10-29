(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
We verify a verification condition for a signed multiplication
overflow detection unit, which is described in
"Combined Unsigned and Two's Complement Saturating Multipliers"
by M. Schulte et al.

Let n be the bit-width of the operands and r the result of the multiplication.
Let ^ denote boolean XOR, + boolean OR, and [i] the bit at position i.
If the overflow detection unit finds an overflow, then it must be the case that
(r[2n-1] ^ r[n-1])  +  (r[2n-2] ^ r[n-1])  +  ...  +  ([r[n] ^ r[n-1]) holds.

Bit-width: 16

Contributed by Robert Brummayer (robert.brummayer@gmail.com).
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun v1 () (_ BitVec 16))
(declare-fun v2 () (_ BitVec 16))
(assert (let ((?v_20 (bvmul (concat (_ bv0 16) v1) (concat (_ bv0 16) v2)))) (let ((?v_21 ((_ extract 15 15) ?v_20)) (?v_0 ((_ extract 15 15) v1)) (?v_2 ((_ extract 15 15) v2))) (let ((?v_1 (concat (ite (= (_ bv1 1) ((_ extract 0 0) ?v_0)) (_ bv32767 15) (_ bv0 15)) ?v_0)) (?v_3 (concat (ite (= (_ bv1 1) ((_ extract 0 0) ?v_2)) (_ bv32767 15) (_ bv0 15)) ?v_2))) (let ((?v_4 (bvand (bvnot (bvand (bvnot v1) (bvnot ?v_1))) (bvnot (bvand v1 ?v_1)))) (?v_6 (bvand (bvnot (bvand (bvnot v2) (bvnot ?v_3))) (bvnot (bvand v2 ?v_3))))) (let ((?v_5 ((_ extract 14 14) ?v_6))) (let ((?v_7 (bvand (bvnot ?v_5) (bvnot ((_ extract 13 13) ?v_6))))) (let ((?v_8 (bvand ?v_7 (bvnot ((_ extract 12 12) ?v_6))))) (let ((?v_9 (bvand ?v_8 (bvnot ((_ extract 11 11) ?v_6))))) (let ((?v_10 (bvand ?v_9 (bvnot ((_ extract 10 10) ?v_6))))) (let ((?v_11 (bvand ?v_10 (bvnot ((_ extract 9 9) ?v_6))))) (let ((?v_12 (bvand ?v_11 (bvnot ((_ extract 8 8) ?v_6))))) (let ((?v_13 (bvand ?v_12 (bvnot ((_ extract 7 7) ?v_6))))) (let ((?v_14 (bvand ?v_13 (bvnot ((_ extract 6 6) ?v_6))))) (let ((?v_15 (bvand ?v_14 (bvnot ((_ extract 5 5) ?v_6))))) (let ((?v_16 (bvand ?v_15 (bvnot ((_ extract 4 4) ?v_6))))) (let ((?v_17 (bvand ?v_16 (bvnot ((_ extract 3 3) ?v_6))))) (let ((?v_18 (bvand ?v_17 (bvnot ((_ extract 2 2) ?v_6)))) (?v_19 (bvmul (concat (ite (= (_ bv1 1) ?v_0) (_ bv1 1) (_ bv0 1)) v1) (concat (ite (= (_ bv1 1) ?v_2) (_ bv1 1) (_ bv0 1)) v2)))) (not (= (bvand (bvnot (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvnot (bvand ((_ extract 1 1) ?v_4) ?v_5)) (bvnot (bvand ((_ extract 2 2) ?v_4) (bvnot ?v_7)))) (bvnot (bvand ((_ extract 3 3) ?v_4) (bvnot ?v_8)))) (bvnot (bvand ((_ extract 4 4) ?v_4) (bvnot ?v_9)))) (bvnot (bvand ((_ extract 5 5) ?v_4) (bvnot ?v_10)))) (bvnot (bvand ((_ extract 6 6) ?v_4) (bvnot ?v_11)))) (bvnot (bvand ((_ extract 7 7) ?v_4) (bvnot ?v_12)))) (bvnot (bvand ((_ extract 8 8) ?v_4) (bvnot ?v_13)))) (bvnot (bvand ((_ extract 9 9) ?v_4) (bvnot ?v_14)))) (bvnot (bvand ((_ extract 10 10) ?v_4) (bvnot ?v_15)))) (bvnot (bvand ((_ extract 11 11) ?v_4) (bvnot ?v_16)))) (bvnot (bvand ((_ extract 12 12) ?v_4) (bvnot ?v_17)))) (bvnot (bvand ((_ extract 13 13) ?v_4) (bvnot ?v_18)))) (bvnot (bvand ((_ extract 14 14) ?v_4) (bvnot (bvand ?v_18 (bvnot ((_ extract 1 1) ?v_6))))))) (ite (= ((_ extract 16 16) ?v_19) ((_ extract 15 15) ?v_19)) (_ bv1 1) (_ bv0 1)))) (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (ite (= ((_ extract 31 31) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1)) (ite (= ((_ extract 30 30) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 29 29) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 28 28) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 27 27) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 26 26) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 25 25) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 24 24) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 23 23) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 22 22) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 21 21) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 20 20) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 19 19) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 18 18) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 17 17) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1))) (ite (= ((_ extract 16 16) ?v_20) ?v_21) (_ bv1 1) (_ bv0 1)))) (_ bv0 1)))))))))))))))))))))
(check-sat)
(exit)
