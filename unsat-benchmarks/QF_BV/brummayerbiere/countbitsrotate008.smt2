(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Count bits pop(x) algorithm, rotate and sum method
From the book "Hacker's delight" by Henry S. Warren, Jr., page 70
We cross-check it with the obvious method of counting bits:
for (s = i = 0; i < BW; i++)
  if (x & (1 << i))
    s++;

Contributed by Robert Brummayer (robert.brummayer@gmail.com)
|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun x () (_ BitVec 8))
(assert (let ((?v_0 ((_ rotate_left 1) x))) (let ((?v_1 ((_ rotate_left 2) ?v_0))) (let ((?v_2 ((_ rotate_left 3) ?v_1))) (let ((?v_3 ((_ rotate_left 4) ?v_2))) (let ((?v_4 ((_ rotate_left 5) ?v_3))) (let ((?v_5 ((_ rotate_left 6) ?v_4)) (?v_6 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv0 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd (_ bv0 8) (_ bv1 8)) (_ bv0 8)))) (let ((?v_7 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv1 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_6 (_ bv1 8)) ?v_6))) (let ((?v_8 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv2 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_7 (_ bv1 8)) ?v_7))) (let ((?v_9 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv3 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_8 (_ bv1 8)) ?v_8))) (let ((?v_10 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv4 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_9 (_ bv1 8)) ?v_9))) (let ((?v_11 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv5 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_10 (_ bv1 8)) ?v_10))) (let ((?v_12 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv6 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_11 (_ bv1 8)) ?v_11))) (not (= (bvnot (ite (= (bvneg (bvadd (bvadd (bvadd (bvadd (bvadd (bvadd (bvadd x ?v_0) ?v_1) ?v_2) ?v_3) ?v_4) ?v_5) ((_ rotate_left 7) ?v_5))) (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv7 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_12 (_ bv1 8)) ?v_12)) (_ bv1 1) (_ bv0 1))) (_ bv0 1))))))))))))))))
(check-sat)
(exit)
