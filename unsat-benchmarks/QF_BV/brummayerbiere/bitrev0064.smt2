(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Bit-reversal rev(x)
From the book "Hacker's delight" by Henry S. Warren, Jr., page 101
We verify rev(rev(x)) = x

Contributed by Robert Brummayer (robert.brummayer@gmail.com)
|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun x () (_ BitVec 64))
(assert (let ((?v_0 ((_ zero_extend 58) (_ bv1 6)))) (let ((?v_1 (bvor (bvshl (bvand x (_ bv6148914691236517205 64)) ?v_0) (bvlshr (bvand x (_ bv12297829382473034410 64)) ?v_0))) (?v_2 ((_ zero_extend 58) (_ bv2 6)))) (let ((?v_3 (bvor (bvshl (bvand ?v_1 (_ bv3689348814741910323 64)) ?v_2) (bvlshr (bvand ?v_1 (_ bv14757395258967641292 64)) ?v_2))) (?v_4 ((_ zero_extend 58) (_ bv4 6)))) (let ((?v_5 (bvor (bvshl (bvand ?v_3 (_ bv1085102592571150095 64)) ?v_4) (bvlshr (bvand ?v_3 (_ bv17361641481138401520 64)) ?v_4))) (?v_6 ((_ zero_extend 58) (_ bv8 6)))) (let ((?v_7 (bvor (bvshl (bvand ?v_5 (_ bv71777214294589695 64)) ?v_6) (bvlshr (bvand ?v_5 (_ bv18374966859414961920 64)) ?v_6))) (?v_8 ((_ zero_extend 58) (_ bv16 6)))) (let ((?v_9 (bvor (bvshl (bvand ?v_7 (_ bv281470681808895 64)) ?v_8) (bvlshr (bvand ?v_7 (_ bv18446462603027742720 64)) ?v_8))) (?v_10 ((_ zero_extend 58) (_ bv32 6)))) (let ((?v_11 (bvor (bvshl (bvand ?v_9 (_ bv4294967295 64)) ?v_10) (bvlshr (bvand ?v_9 (_ bv18446744069414584320 64)) ?v_10)))) (let ((?v_12 (bvor (bvshl (bvand ?v_11 (_ bv6148914691236517205 64)) ?v_0) (bvlshr (bvand ?v_11 (_ bv12297829382473034410 64)) ?v_0)))) (let ((?v_13 (bvor (bvshl (bvand ?v_12 (_ bv3689348814741910323 64)) ?v_2) (bvlshr (bvand ?v_12 (_ bv14757395258967641292 64)) ?v_2)))) (let ((?v_14 (bvor (bvshl (bvand ?v_13 (_ bv1085102592571150095 64)) ?v_4) (bvlshr (bvand ?v_13 (_ bv17361641481138401520 64)) ?v_4)))) (let ((?v_15 (bvor (bvshl (bvand ?v_14 (_ bv71777214294589695 64)) ?v_6) (bvlshr (bvand ?v_14 (_ bv18374966859414961920 64)) ?v_6)))) (let ((?v_16 (bvor (bvshl (bvand ?v_15 (_ bv281470681808895 64)) ?v_8) (bvlshr (bvand ?v_15 (_ bv18446462603027742720 64)) ?v_8)))) (not (= (bvnot (ite (= (bvor (bvshl (bvand ?v_16 (_ bv4294967295 64)) ?v_10) (bvlshr (bvand ?v_16 (_ bv18446744069414584320 64)) ?v_10)) x) (_ bv1 1) (_ bv0 1))) (_ bv0 1))))))))))))))))
(check-sat)
(exit)
