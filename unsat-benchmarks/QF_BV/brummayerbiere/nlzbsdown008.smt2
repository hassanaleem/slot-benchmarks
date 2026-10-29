(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Number of leading zeros nlz(x) algorithm, binary search, counting down
From the book "Hacker's delight" by Henry S. Warren, Jr., page 78
We cross-check it with an obvious method of counting leading zeros:

s = 0;
for (i = BW - 1; i >= 0; i--)
  if (x & (1 << i))
    break;
  else
    s++;

Contributed by Robert Brummayer (robert.brummayer@gmail.com)
|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun x () (_ BitVec 8))
(assert (let ((?v_10 ((_ zero_extend 5) (_ bv4 3)))) (let ((?v_0 (bvlshr x ?v_10))) (let ((?v_4 (= (_ bv1 1) (ite (not (= ?v_0 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_5 (ite ?v_4 (bvsub (_ bv8 8) (_ bv4 8)) (_ bv8 8))) (?v_2 (ite ?v_4 ?v_0 x)) (?v_11 ((_ zero_extend 5) (_ bv2 3)))) (let ((?v_1 (bvlshr ?v_2 ?v_11))) (let ((?v_3 (= (_ bv1 1) (ite (not (= ?v_1 (_ bv0 8))) (_ bv1 1) (_ bv0 1))))) (let ((?v_6 (ite ?v_3 (bvsub ?v_5 (_ bv2 8)) ?v_5)) (?v_9 (ite ?v_3 ?v_1 ?v_2)) (?v_12 ((_ zero_extend 5) (_ bv1 3)))) (let ((?v_8 (bvlshr ?v_9 ?v_12))) (let ((?v_7 (= (_ bv1 1) (ite (not (= ?v_8 (_ bv0 8))) (_ bv1 1) (_ bv0 1)))) (?v_26 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv7 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_27 (bvor (_ bv0 1) (bvnot ?v_26)))) (let ((?v_28 (ite (= (_ bv1 1) ?v_26) (ite (= (_ bv1 1) ?v_27) (_ bv0 8) (bvadd (_ bv0 8) (_ bv1 8))) (_ bv0 8))) (?v_24 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv6 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_25 (bvor ?v_27 (bvnot ?v_24)))) (let ((?v_29 (ite (= (_ bv1 1) ?v_24) (ite (= (_ bv1 1) ?v_25) ?v_28 (bvadd ?v_28 (_ bv1 8))) ?v_28)) (?v_22 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv5 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_23 (bvor ?v_25 (bvnot ?v_22)))) (let ((?v_30 (ite (= (_ bv1 1) ?v_22) (ite (= (_ bv1 1) ?v_23) ?v_29 (bvadd ?v_29 (_ bv1 8))) ?v_29)) (?v_20 (ite (= (bvand x (bvshl (_ bv1 8) ?v_10)) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_21 (bvor ?v_23 (bvnot ?v_20)))) (let ((?v_31 (ite (= (_ bv1 1) ?v_20) (ite (= (_ bv1 1) ?v_21) ?v_30 (bvadd ?v_30 (_ bv1 8))) ?v_30)) (?v_18 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv3 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_19 (bvor ?v_21 (bvnot ?v_18)))) (let ((?v_32 (ite (= (_ bv1 1) ?v_18) (ite (= (_ bv1 1) ?v_19) ?v_31 (bvadd ?v_31 (_ bv1 8))) ?v_31)) (?v_16 (ite (= (bvand x (bvshl (_ bv1 8) ?v_11)) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_17 (bvor ?v_19 (bvnot ?v_16)))) (let ((?v_33 (ite (= (_ bv1 1) ?v_16) (ite (= (_ bv1 1) ?v_17) ?v_32 (bvadd ?v_32 (_ bv1 8))) ?v_32)) (?v_14 (ite (= (bvand x (bvshl (_ bv1 8) ?v_12)) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_15 (bvor ?v_17 (bvnot ?v_14)))) (let ((?v_34 (ite (= (_ bv1 1) ?v_14) (ite (= (_ bv1 1) ?v_15) ?v_33 (bvadd ?v_33 (_ bv1 8))) ?v_33)) (?v_13 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv0 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (not (= (bvnot (ite (= (bvsub (ite ?v_7 (bvsub ?v_6 (_ bv1 8)) ?v_6) (ite ?v_7 ?v_8 ?v_9)) (ite (= (_ bv1 1) ?v_13) (ite (= (_ bv1 1) (bvor ?v_15 (bvnot ?v_13))) ?v_34 (bvadd ?v_34 (_ bv1 8))) ?v_34)) (_ bv1 1) (_ bv0 1))) (_ bv0 1)))))))))))))))))))))))))))
(check-sat)
(exit)
