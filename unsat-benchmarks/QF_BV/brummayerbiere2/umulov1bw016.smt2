(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
We verify the correctness of an unsigned multiplication
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
(assert (let ((?v_0 ((_ extract 15 15) v2))) (let ((?v_1 (bvand (bvnot ?v_0) (bvnot ((_ extract 14 14) v2))))) (let ((?v_2 (bvand ?v_1 (bvnot ((_ extract 13 13) v2))))) (let ((?v_3 (bvand ?v_2 (bvnot ((_ extract 12 12) v2))))) (let ((?v_4 (bvand ?v_3 (bvnot ((_ extract 11 11) v2))))) (let ((?v_5 (bvand ?v_4 (bvnot ((_ extract 10 10) v2))))) (let ((?v_6 (bvand ?v_5 (bvnot ((_ extract 9 9) v2))))) (let ((?v_7 (bvand ?v_6 (bvnot ((_ extract 8 8) v2))))) (let ((?v_8 (bvand ?v_7 (bvnot ((_ extract 7 7) v2))))) (let ((?v_9 (bvand ?v_8 (bvnot ((_ extract 6 6) v2))))) (let ((?v_10 (bvand ?v_9 (bvnot ((_ extract 5 5) v2))))) (let ((?v_11 (bvand ?v_10 (bvnot ((_ extract 4 4) v2))))) (let ((?v_12 (bvand ?v_11 (bvnot ((_ extract 3 3) v2))))) (let ((?v_13 (bvand ?v_12 (bvnot ((_ extract 2 2) v2))))) (not (= (bvnot (ite (= (bvnot (ite (= ((_ extract 31 16) (bvmul (concat (_ bv0 16) v1) (concat (_ bv0 16) v2))) (_ bv0 16)) (_ bv1 1) (_ bv0 1))) (bvnot (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvand (bvnot (bvand ((_ extract 1 1) v1) ?v_0)) (bvnot (bvand ((_ extract 2 2) v1) (bvnot ?v_1)))) (bvnot (bvand ((_ extract 3 3) v1) (bvnot ?v_2)))) (bvnot (bvand ((_ extract 4 4) v1) (bvnot ?v_3)))) (bvnot (bvand ((_ extract 5 5) v1) (bvnot ?v_4)))) (bvnot (bvand ((_ extract 6 6) v1) (bvnot ?v_5)))) (bvnot (bvand ((_ extract 7 7) v1) (bvnot ?v_6)))) (bvnot (bvand ((_ extract 8 8) v1) (bvnot ?v_7)))) (bvnot (bvand ((_ extract 9 9) v1) (bvnot ?v_8)))) (bvnot (bvand ((_ extract 10 10) v1) (bvnot ?v_9)))) (bvnot (bvand ((_ extract 11 11) v1) (bvnot ?v_10)))) (bvnot (bvand ((_ extract 12 12) v1) (bvnot ?v_11)))) (bvnot (bvand ((_ extract 13 13) v1) (bvnot ?v_12)))) (bvnot (bvand ((_ extract 14 14) v1) (bvnot ?v_13)))) (bvnot (bvand ((_ extract 15 15) v1) (bvnot (bvand ?v_13 (bvnot ((_ extract 1 1) v2))))))) (bvnot ((_ extract 16 16) (bvmul (concat (_ bv0 1) v1) (concat (_ bv0 1) v2))))))) (_ bv1 1) (_ bv0 1))) (_ bv0 1))))))))))))))))))
(check-sat)
(exit)
