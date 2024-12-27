(set-logic ALL)
; benchmark generated from python API
(set-info :status unknown)
(declare-datatypes ((Proc 0)) (((foo_func) (coinbase))))
(declare-fun w_0 () Int)
(declare-fun success_1 () Bool)
(declare-fun t_success_0_0 () Bool)
(declare-fun aw_0_2 () Int)
(declare-fun aw_1_2 () Int)
(declare-fun aw_0_1 () Int)
(declare-fun aw_1_1 () Int)
(declare-fun aw_0_0 () Int)
(declare-fun aw_1_0 () Int)
(declare-fun t_w_0_0 () Int)
(declare-fun w_1 () Int)
(declare-fun err_1 () Bool)
(declare-fun xn_0 () Int)
(declare-fun xa_0 () Int)
(declare-fun success_2 () Bool)
(declare-fun t_success_1_0 () Bool)
(declare-fun aw_2_2 () Int)
(declare-fun aw_2_1 () Int)
(declare-fun aw_2_0 () Int)
(declare-fun t_w_1_0 () Int)
(declare-fun w_2 () Int)
(declare-fun err_2 () Bool)
(declare-fun xn_1 () Int)
(declare-fun xa_1 () Int)
(declare-fun f_1 () Proc)
(declare-fun block_num_1 () Int)
(declare-fun block_num_2 () Int)
(declare-fun success_3 () Bool)
(declare-fun t_success_2_0 () Bool)
(declare-fun aw_3_2 () Int)
(declare-fun aw_3_1 () Int)
(declare-fun aw_3_0 () Int)
(declare-fun t_w_2_0 () Int)
(declare-fun w_3 () Int)
(declare-fun err_3 () Bool)
(declare-fun xn_2 () Int)
(declare-fun xa_2 () Int)
(declare-fun f_2 () Proc)
(declare-fun block_num_3 () Int)
(assert
 (>= w_0 0))
(assert
 (let (($x1345 (= t_success_0_0 success_1)))
 (let (($x1343 (= aw_1_2 aw_0_2)))
 (let (($x1342 (= aw_1_1 aw_0_1)))
 (let (($x1341 (= aw_1_0 aw_0_0)))
 (let (($x1340 (= w_1 t_w_0_0)))
 (let (($x1347 (and (> xn_0 0) (= err_1 false) true (= t_success_0_0 false) (and $x1340 (and $x1341 $x1342 $x1343) $x1345))))
 (and (and (>= xa_0 0) (<= xa_0 2) (>= xn_0 0)) (and (>= aw_0_0 0) (>= aw_0_1 0) (>= aw_0_2 0)) (and (= t_w_0_0 (+ w_0 xn_0)) $x1347)))))))))
(assert
 (let (($x1391 (= t_success_1_0 success_2)))
 (let (($x1374 (= aw_2_2 aw_1_2)))
 (let (($x1373 (= aw_2_1 aw_1_1)))
 (let (($x1372 (= aw_2_0 aw_1_0)))
 (let (($x1375 (and $x1372 $x1373 $x1374)))
 (let (($x1371 (= w_2 t_w_1_0)))
 (let (($x1368 (= err_2 false)))
 (let (($x1390 (ite (and (>= t_w_1_0 10)) (and (= t_success_1_0 true) true) (and true true (= t_success_1_0 success_1)))))
 (let (($x1370 (= t_w_1_0 (+ w_1 xn_1))))
 (let (($x1382 (<= xa_1 2)))
 (let (($x1381 (>= xa_1 1)))
 (let (($x1395 (and $x1381 $x1382 (and $x1370 (and $x1390 $x1368 true (and $x1371 $x1375 $x1391))))))
 (let (($x1367 (= xa_1 0)))
 (let (($x1379 (and $x1367 (and $x1368 $x1370 (and $x1371 $x1375 (= success_1 success_2))))))
 (let (($x1366 (= f_1 coinbase)))
 (and (and (>= xn_1 0) (>= w_2 0)) (and (>= aw_1_0 0) (>= aw_1_1 0) (>= aw_1_2 0)) (>= block_num_2 block_num_1) (ite $x1366 $x1379 $x1395))))))))))))))))))
(assert
 (let (($x1440 (= t_success_2_0 success_3)))
 (let (($x1425 (= aw_3_2 aw_2_2)))
 (let (($x1424 (= aw_3_1 aw_2_1)))
 (let (($x1423 (= aw_3_0 aw_2_0)))
 (let (($x1426 (and $x1423 $x1424 $x1425)))
 (let (($x1422 (= w_3 t_w_2_0)))
 (let (($x1419 (= err_3 false)))
 (let (($x1439 (ite (and (>= t_w_2_0 10)) (and (= t_success_2_0 true) true) (and true true (= t_success_2_0 success_2)))))
 (let (($x1421 (= t_w_2_0 (+ w_2 xn_2))))
 (let (($x1432 (<= xa_2 2)))
 (let (($x1431 (>= xa_2 1)))
 (let (($x1444 (and $x1431 $x1432 (and $x1421 (and $x1439 $x1419 true (and $x1422 $x1426 $x1440))))))
 (let (($x1418 (= xa_2 0)))
 (let (($x1430 (and $x1418 (and $x1419 $x1421 (and $x1422 $x1426 (= success_2 success_3))))))
 (let (($x1417 (= f_2 coinbase)))
 (and (and (>= xn_2 0) (>= w_3 0)) (and (>= aw_2_0 0) (>= aw_2_1 0) (>= aw_2_2 0)) (>= block_num_3 block_num_2) (ite $x1417 $x1430 $x1444))))))))))))))))))
(assert
 (let (($x1485 (exists ((xa_q Int) )(let (($x1480 (forall ((xn_q0 Int) (f_q0 Proc) (wq0 Int) (awq0_0 Int) (awq0_1 Int) (awq0_2 Int) (t_wq0_0 Int) (t_wq0_1 Int) (t_wq0_2 Int) (t_wq0_3 Int) (t_wq0_4 Int) (t_wq0_5 Int) (t_wq0_6 Int) (t_wq0_7 Int) (t_wq0_8 Int) (t_wq0_9 Int) (t_wq0_10 Int) (t_wq0_11 Int) (t_wq0_12 Int) (t_wq0_13 Int) (t_wq0_14 Int) (t_wq0_15 Int) (t_wq0_16 Int) (t_wq0_17 Int) (t_wq0_18 Int) (t_wq0_19 Int) (t_wq0_20 Int) (t_wq0_21 Int) (t_wq0_22 Int) (t_wq0_23 Int) (t_wq0_24 Int) (t_wq0_25 Int) (t_wq0_26 Int) (t_wq0_27 Int) (t_wq0_28 Int) (t_wq0_29 Int) (t_wq0_30 Int) (t_wq0_31 Int) (t_wq0_32 Int) (t_wq0_33 Int) (t_wq0_34 Int) (t_wq0_35 Int) (t_wq0_36 Int) (t_wq0_37 Int) (t_wq0_38 Int) (t_wq0_39 Int) (t_wq0_40 Int) (t_wq0_41 Int) (t_wq0_42 Int) (t_wq0_43 Int) (t_wq0_44 Int) (t_wq0_45 Int) (t_wq0_46 Int) (t_wq0_47 Int) (t_wq0_48 Int) (t_wq0_49 Int) (t_awq0_0_0 Int) (t_awq0_0_1 Int) (t_awq0_0_2 Int) (t_awq0_1_0 Int) (t_awq0_1_1 Int) (t_awq0_1_2 Int) (t_awq0_2_0 Int) (t_awq0_2_1 Int) (t_awq0_2_2 Int) (t_awq0_3_0 Int) (t_awq0_3_1 Int) (t_awq0_3_2 Int) (t_awq0_4_0 Int) (t_awq0_4_1 Int) (t_awq0_4_2 Int) (t_awq0_5_0 Int) (t_awq0_5_1 Int) (t_awq0_5_2 Int) (t_awq0_6_0 Int) (t_awq0_6_1 Int) (t_awq0_6_2 Int) (t_awq0_7_0 Int) (t_awq0_7_1 Int) (t_awq0_7_2 Int) (t_awq0_8_0 Int) (t_awq0_8_1 Int) (t_awq0_8_2 Int) (t_awq0_9_0 Int) (t_awq0_9_1 Int) (t_awq0_9_2 Int) (t_awq0_10_0 Int) (t_awq0_10_1 Int) (t_awq0_10_2 Int) (t_awq0_11_0 Int) (t_awq0_11_1 Int) (t_awq0_11_2 Int) (t_awq0_12_0 Int) (t_awq0_12_1 Int) (t_awq0_12_2 Int) (t_awq0_13_0 Int) (t_awq0_13_1 Int) (t_awq0_13_2 Int) (t_awq0_14_0 Int) (t_awq0_14_1 Int) (t_awq0_14_2 Int) (t_awq0_15_0 Int) (t_awq0_15_1 Int) (t_awq0_15_2 Int) (t_awq0_16_0 Int) (t_awq0_16_1 Int) (t_awq0_16_2 Int) (t_awq0_17_0 Int) (t_awq0_17_1 Int) (t_awq0_17_2 Int) (t_awq0_18_0 Int) (t_awq0_18_1 Int) (t_awq0_18_2 Int) (t_awq0_19_0 Int) (t_awq0_19_1 Int) (t_awq0_19_2 Int) (t_awq0_20_0 Int) (t_awq0_20_1 Int) (t_awq0_20_2 Int) (t_awq0_21_0 Int) (t_awq0_21_1 Int) (t_awq0_21_2 Int) (t_awq0_22_0 Int) (t_awq0_22_1 Int) (t_awq0_22_2 Int) (t_awq0_23_0 Int) (t_awq0_23_1 Int) (t_awq0_23_2 Int) (t_awq0_24_0 Int) (t_awq0_24_1 Int) (t_awq0_24_2 Int) (t_awq0_25_0 Int) (t_awq0_25_1 Int) (t_awq0_25_2 Int) (t_awq0_26_0 Int) (t_awq0_26_1 Int) (t_awq0_26_2 Int) (t_awq0_27_0 Int) (t_awq0_27_1 Int) (t_awq0_27_2 Int) (t_awq0_28_0 Int) (t_awq0_28_1 Int) (t_awq0_28_2 Int) (t_awq0_29_0 Int) (t_awq0_29_1 Int) (t_awq0_29_2 Int) (t_awq0_30_0 Int) (t_awq0_30_1 Int) (t_awq0_30_2 Int) (t_awq0_31_0 Int) (t_awq0_31_1 Int) (t_awq0_31_2 Int) (t_awq0_32_0 Int) (t_awq0_32_1 Int) (t_awq0_32_2 Int) (t_awq0_33_0 Int) (t_awq0_33_1 Int) (t_awq0_33_2 Int) (t_awq0_34_0 Int) (t_awq0_34_1 Int) (t_awq0_34_2 Int) (t_awq0_35_0 Int) (t_awq0_35_1 Int) (t_awq0_35_2 Int) (t_awq0_36_0 Int) (t_awq0_36_1 Int) (t_awq0_36_2 Int) (t_awq0_37_0 Int) (t_awq0_37_1 Int) (t_awq0_37_2 Int) (t_awq0_38_0 Int) (t_awq0_38_1 Int) (t_awq0_38_2 Int) (t_awq0_39_0 Int) (t_awq0_39_1 Int) (t_awq0_39_2 Int) (t_awq0_40_0 Int) (t_awq0_40_1 Int) (t_awq0_40_2 Int) (t_awq0_41_0 Int) (t_awq0_41_1 Int) (t_awq0_41_2 Int) (t_awq0_42_0 Int) (t_awq0_42_1 Int) (t_awq0_42_2 Int) (t_awq0_43_0 Int) (t_awq0_43_1 Int) (t_awq0_43_2 Int) (t_awq0_44_0 Int) (t_awq0_44_1 Int) (t_awq0_44_2 Int) (t_awq0_45_0 Int) (t_awq0_45_1 Int) (t_awq0_45_2 Int) (t_awq0_46_0 Int) (t_awq0_46_1 Int) (t_awq0_46_2 Int) (t_awq0_47_0 Int) (t_awq0_47_1 Int) (t_awq0_47_2 Int) (t_awq0_48_0 Int) (t_awq0_48_1 Int) (t_awq0_48_2 Int) (t_awq0_49_0 Int) (t_awq0_49_1 Int) (t_awq0_49_2 Int) (err_q0 Bool) (successq0 Bool) (t_successq0_0 Bool) (t_successq0_1 Bool) (t_successq0_2 Bool) (t_successq0_3 Bool) (t_successq0_4 Bool) (t_successq0_5 Bool) (t_successq0_6 Bool) (t_successq0_7 Bool) (t_successq0_8 Bool) (t_successq0_9 Bool) (t_successq0_10 Bool) (t_successq0_11 Bool) (t_successq0_12 Bool) (t_successq0_13 Bool) (t_successq0_14 Bool) (t_successq0_15 Bool) (t_successq0_16 Bool) (t_successq0_17 Bool) (t_successq0_18 Bool) (t_successq0_19 Bool) (t_successq0_20 Bool) (t_successq0_21 Bool) (t_successq0_22 Bool) (t_successq0_23 Bool) (t_successq0_24 Bool) (t_successq0_25 Bool) (t_successq0_26 Bool) (t_successq0_27 Bool) (t_successq0_28 Bool) (t_successq0_29 Bool) (t_successq0_30 Bool) (t_successq0_31 Bool) (t_successq0_32 Bool) (t_successq0_33 Bool) (t_successq0_34 Bool) (t_successq0_35 Bool) (t_successq0_36 Bool) (t_successq0_37 Bool) (t_successq0_38 Bool) (t_successq0_39 Bool) (t_successq0_40 Bool) (t_successq0_41 Bool) (t_successq0_42 Bool) (t_successq0_43 Bool) (t_successq0_44 Bool) (t_successq0_45 Bool) (t_successq0_46 Bool) (t_successq0_47 Bool) (t_successq0_48 Bool) (t_successq0_49 Bool) )(let (($x1764 (and (= awq0_0 aw_3_0) (= awq0_1 aw_3_1) (= awq0_2 aw_3_2))))
(let (($x1765 (= wq0 t_wq0_0)))
(let (($x1767 (= err_q0 false)))
(let (($x1774 (ite (and (>= t_wq0_0 10)) (and (= t_successq0_0 true) true) (and true true (= t_successq0_0 success_3)))))
(let (($x1777 (= t_wq0_0 (+ w_3 xn_q0))))
(let (($x1473 (and (>= xa_q 1) (<= xa_q 2) (and $x1777 (and $x1774 $x1767 true (and $x1765 $x1764 (= t_successq0_0 successq0)))))))
(let (($x1475 (and (= xa_q 0) (and $x1767 $x1777 (and $x1765 $x1764 (= success_3 successq0))))))
(let (($x1477 (and (and (>= xn_q0 0) (>= wq0 0)) (and (>= aw_3_0 0) (>= aw_3_1 0) (>= aw_3_2 0)) (>= block_num_3 block_num_3) (ite (= f_q0 coinbase) $x1475 $x1473))))
(or (not $x1477) (not successq0)))))))))))
))
(and (and (>= xa_q 1) (<= xa_q 2)) (> w_3 0) $x1480)))
))
(and $x1485)))
(check-sat)

(get-model)