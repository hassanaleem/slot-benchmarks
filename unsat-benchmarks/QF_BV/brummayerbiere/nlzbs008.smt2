(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Number of leading zeros nlz(x) algorithm, binary search 
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
(assert (let ((?v_0 ((_ zero_extend 5) (_ bv4 3)))) (let ((?v_1 (= (_ bv1 1) (ite (= (bvlshr x ?v_0) (_ bv0 8)) (_ bv1 1) (_ bv0 1))))) (let ((?v_2 (ite ?v_1 (bvadd (_ bv1 8) (_ bv4 8)) (_ bv1 8))) (?v_4 (ite ?v_1 (bvshl x ?v_0) x)) (?v_6 ((_ zero_extend 5) (_ bv6 3)))) (let ((?v_3 (= (_ bv1 1) (ite (= (bvlshr ?v_4 ?v_6) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (?v_7 ((_ zero_extend 5) (_ bv2 3))) (?v_5 ((_ zero_extend 5) (_ bv7 3)))) (let ((?v_21 (ite (= (bvand x (bvshl (_ bv1 8) ?v_5)) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_22 (bvor (_ bv0 1) (bvnot ?v_21)))) (let ((?v_23 (ite (= (_ bv1 1) ?v_21) (ite (= (_ bv1 1) ?v_22) (_ bv0 8) (bvadd (_ bv0 8) (_ bv1 8))) (_ bv0 8))) (?v_19 (ite (= (bvand x (bvshl (_ bv1 8) ?v_6)) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_20 (bvor ?v_22 (bvnot ?v_19)))) (let ((?v_24 (ite (= (_ bv1 1) ?v_19) (ite (= (_ bv1 1) ?v_20) ?v_23 (bvadd ?v_23 (_ bv1 8))) ?v_23)) (?v_17 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv5 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_18 (bvor ?v_20 (bvnot ?v_17)))) (let ((?v_25 (ite (= (_ bv1 1) ?v_17) (ite (= (_ bv1 1) ?v_18) ?v_24 (bvadd ?v_24 (_ bv1 8))) ?v_24)) (?v_15 (ite (= (bvand x (bvshl (_ bv1 8) ?v_0)) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_16 (bvor ?v_18 (bvnot ?v_15)))) (let ((?v_26 (ite (= (_ bv1 1) ?v_15) (ite (= (_ bv1 1) ?v_16) ?v_25 (bvadd ?v_25 (_ bv1 8))) ?v_25)) (?v_13 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv3 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_14 (bvor ?v_16 (bvnot ?v_13)))) (let ((?v_27 (ite (= (_ bv1 1) ?v_13) (ite (= (_ bv1 1) ?v_14) ?v_26 (bvadd ?v_26 (_ bv1 8))) ?v_26)) (?v_11 (ite (= (bvand x (bvshl (_ bv1 8) ?v_7)) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_12 (bvor ?v_14 (bvnot ?v_11)))) (let ((?v_28 (ite (= (_ bv1 1) ?v_11) (ite (= (_ bv1 1) ?v_12) ?v_27 (bvadd ?v_27 (_ bv1 8))) ?v_27)) (?v_9 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv1 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (let ((?v_10 (bvor ?v_12 (bvnot ?v_9)))) (let ((?v_29 (ite (= (_ bv1 1) ?v_9) (ite (= (_ bv1 1) ?v_10) ?v_28 (bvadd ?v_28 (_ bv1 8))) ?v_28)) (?v_8 (ite (= (bvand x (bvshl (_ bv1 8) ((_ zero_extend 5) (_ bv0 3)))) (_ bv0 8)) (_ bv1 1) (_ bv0 1)))) (not (= (bvnot (ite (= (ite (= (_ bv1 1) (ite (= x (_ bv0 8)) (_ bv1 1) (_ bv0 1))) (_ bv8 8) (bvsub (ite ?v_3 (bvadd ?v_2 (_ bv2 8)) ?v_2) (bvlshr (ite ?v_3 (bvshl ?v_4 ?v_7) ?v_4) ?v_5))) (ite (= (_ bv1 1) ?v_8) (ite (= (_ bv1 1) (bvor ?v_10 (bvnot ?v_8))) ?v_29 (bvadd ?v_29 (_ bv1 8))) ?v_29)) (_ bv1 1) (_ bv0 1))) (_ bv0 1)))))))))))))))))))))))
(check-sat)
(exit)
