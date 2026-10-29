(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Ivan Jager <aij+nospam@andrew.cmu.edu>

|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun t_252 () (_ BitVec 1))
(declare-fun t_251 () (_ BitVec 1))
(declare-fun t_250 () (_ BitVec 1))
(declare-fun t_249 () (_ BitVec 1))
(declare-fun t_248 () (_ BitVec 1))
(assert (= (_ bv1 1) (bvand (bvand (ite (= t_248 (_ bv0 1)) (_ bv1 1) (_ bv0 1)) (bvand (ite (= t_249 (_ bv0 1)) (_ bv1 1) (_ bv0 1)) (bvand (ite (= t_250 t_248) (_ bv1 1) (_ bv0 1)) (bvand (ite (= t_251 (bvnot (_ bv0 1))) (_ bv1 1) (_ bv0 1)) (ite (= t_252 (bvor t_249 (bvand t_251 t_250))) (_ bv1 1) (_ bv0 1)))))) (bvand (bvnot (bvand t_251 (bvnot t_248))) (bvand t_252 (_ bv1 1))))))
(check-sat)
(exit)
