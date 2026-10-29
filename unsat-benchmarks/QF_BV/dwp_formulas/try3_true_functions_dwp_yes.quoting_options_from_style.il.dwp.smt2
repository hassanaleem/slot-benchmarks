(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Ivan Jager <aij+nospam@andrew.cmu.edu>

|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun t_452 () (_ BitVec 1))
(declare-fun t_451 () (_ BitVec 1))
(declare-fun t_450 () (_ BitVec 1))
(declare-fun t_449 () (_ BitVec 1))
(declare-fun t_448 () (_ BitVec 1))
(assert (= (_ bv1 1) (bvand (bvand (ite (= t_448 (_ bv0 1)) (_ bv1 1) (_ bv0 1)) (bvand (ite (= t_449 (_ bv0 1)) (_ bv1 1) (_ bv0 1)) (bvand (ite (= t_450 t_448) (_ bv1 1) (_ bv0 1)) (bvand (ite (= t_451 (bvnot (_ bv0 1))) (_ bv1 1) (_ bv0 1)) (ite (= t_452 (bvor t_449 (bvand t_451 t_450))) (_ bv1 1) (_ bv0 1)))))) (bvand (bvnot (bvand t_451 (bvnot t_448))) (bvand t_452 (_ bv1 1))))))
(check-sat)
(exit)
