(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Count bits pop(x) algorithm, shift right and subtract method
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
(assert (let ((?v_1 ((_ zero_extend 5) (_ bv1 3))) (?v_13 (= (_ bv1 1) (ite (not (= x (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_0 (ite ?v_13 (bvlshr x ?v_1) x))) (let ((?v_14 (ite ?v_13 (bvsub x ?v_0) x)) (?v_12 (= (_ bv1 1) (ite (not (= ?v_0 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_2 (ite ?v_12 (bvlshr ?v_0 ?v_1) ?v_0))) (let ((?v_15 (ite ?v_12 (bvsub ?v_14 ?v_2) ?v_14)) (?v_11 (= (_ bv1 1) (ite (not (= ?v_2 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_3 (ite ?v_11 (bvlshr ?v_2 ?v_1) ?v_2))) (let ((?v_16 (ite ?v_11 (bvsub ?v_15 ?v_3) ?v_15)) (?v_10 (= (_ bv1 1) (ite (not (= ?v_3 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_4 (ite ?v_10 (bvlshr ?v_3 ?v_1) ?v_3))) (let ((?v_17 (ite ?v_10 (bvsub ?v_16 ?v_4) ?v_16)) (?v_9 (= (_ bv1 1) (ite (not (= ?v_4 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_5 (ite ?v_9 (bvlshr ?v_4 ?v_1) ?v_4))) (let ((?v_18 (ite ?v_9 (bvsub ?v_17 ?v_5) ?v_17)) (?v_8 (= (_ bv1 1) (ite (not (= ?v_5 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_6 (ite ?v_8 (bvlshr ?v_5 ?v_1) ?v_5))) (let ((?v_20 (ite ?v_8 (bvsub ?v_18 ?v_6) ?v_18)) (?v_7 (= (_ bv1 1) (ite (not (= ?v_6 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_19 (ite ?v_7 (bvlshr ?v_6 ?v_1) ?v_6))) (let ((?v_22 (ite ?v_7 (bvsub ?v_20 ?v_19) ?v_20)) (?v_21 (= (_ bv1 1) (ite (not (= ?v_19 (_ bv0 8))) (_ bv1 1) (_ bv0 1)))) (?v_23 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv0 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd (_ bv0 8) (_ bv1 8)) (_ bv0 8)))) (let ((?v_24 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ?v_1)) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_23 (_ bv1 8)) ?v_23))) (let ((?v_25 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv2 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_24 (_ bv1 8)) ?v_24))) (let ((?v_26 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv3 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_25 (_ bv1 8)) ?v_25))) (let ((?v_27 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv4 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_26 (_ bv1 8)) ?v_26))) (let ((?v_28 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv5 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_27 (_ bv1 8)) ?v_27))) (let ((?v_29 (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv6 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_28 (_ bv1 8)) ?v_28))) (not (= (bvnot (ite (= (ite ?v_21 (bvsub ?v_22 (ite ?v_21 (bvlshr ?v_19 ?v_1) ?v_19)) ?v_22) (ite (= (_ bv1 1) (ite (not (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv7 3)))) (_ bv0 8))) (_ bv1 1) (_ bv0 1))) (bvadd ?v_29 (_ bv1 8)) ?v_29)) (_ bv1 1) (_ bv0 1))) (_ bv0 1)))))))))))))))))))))))))
(check-sat)
(exit)
