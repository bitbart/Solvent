(set-logic ALL)
; benchmark generated from python API
(set-info :status unknown)
(declare-datatypes ((Proc 0)) (((coinbase) (foo_func))))
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
(declare-fun success_4 () Bool)
(declare-fun t_success_3_0 () Bool)
(declare-fun aw_4_2 () Int)
(declare-fun aw_4_1 () Int)
(declare-fun aw_4_0 () Int)
(declare-fun t_w_3_0 () Int)
(declare-fun w_4 () Int)
(declare-fun err_4 () Bool)
(declare-fun xn_3 () Int)
(declare-fun xa_3 () Int)
(declare-fun f_3 () Proc)
(declare-fun block_num_4 () Int)
(declare-fun success_5 () Bool)
(declare-fun t_success_4_0 () Bool)
(declare-fun aw_5_2 () Int)
(declare-fun aw_5_1 () Int)
(declare-fun aw_5_0 () Int)
(declare-fun t_w_4_0 () Int)
(declare-fun w_5 () Int)
(declare-fun err_5 () Bool)
(declare-fun xn_4 () Int)
(declare-fun xa_4 () Int)
(declare-fun f_4 () Proc)
(declare-fun block_num_5 () Int)
(declare-fun success_6 () Bool)
(declare-fun t_success_5_0 () Bool)
(declare-fun aw_6_2 () Int)
(declare-fun aw_6_1 () Int)
(declare-fun aw_6_0 () Int)
(declare-fun t_w_5_0 () Int)
(declare-fun w_6 () Int)
(declare-fun err_6 () Bool)
(declare-fun xn_5 () Int)
(declare-fun xa_5 () Int)
(declare-fun f_5 () Proc)
(declare-fun block_num_6 () Int)
(assert
 (>= w_0 0))
(assert
 (let (($x2125 (= t_success_0_0 success_1)))
 (let (($x2123 (= aw_1_2 aw_0_2)))
 (let (($x2122 (= aw_1_1 aw_0_1)))
 (let (($x2121 (= aw_1_0 aw_0_0)))
 (let (($x2120 (= w_1 t_w_0_0)))
 (let (($x2127 (and (> xn_0 0) (= err_1 false) true (= t_success_0_0 false) (and $x2120 (and $x2121 $x2122 $x2123) $x2125))))
 (and (and (>= xa_0 0) (<= xa_0 2) (>= xn_0 0)) (and (>= aw_0_0 0) (>= aw_0_1 0) (>= aw_0_2 0)) (and (= t_w_0_0 (+ w_0 xn_0)) $x2127)))))))))
(assert
 (let (($x2171 (= t_success_1_0 success_2)))
 (let (($x2154 (= aw_2_2 aw_1_2)))
 (let (($x2153 (= aw_2_1 aw_1_1)))
 (let (($x2152 (= aw_2_0 aw_1_0)))
 (let (($x2155 (and $x2152 $x2153 $x2154)))
 (let (($x2151 (= w_2 t_w_1_0)))
 (let (($x2148 (= err_2 false)))
 (let (($x2170 (ite (and (>= t_w_1_0 10)) (and (= t_success_1_0 true) true) (and true true (= t_success_1_0 success_1)))))
 (let (($x2150 (= t_w_1_0 (+ w_1 xn_1))))
 (let (($x2162 (<= xa_1 2)))
 (let (($x2161 (>= xa_1 1)))
 (let (($x2175 (and $x2161 $x2162 (and $x2150 (and $x2170 $x2148 true (and $x2151 $x2155 $x2171))))))
 (let (($x2147 (= xa_1 0)))
 (let (($x2159 (and $x2147 (and $x2148 $x2150 (and $x2151 $x2155 (= success_1 success_2))))))
 (let (($x2146 (= f_1 coinbase)))
 (and (and (>= xn_1 0) (>= w_2 0)) (and (>= aw_1_0 0) (>= aw_1_1 0) (>= aw_1_2 0)) (>= block_num_2 block_num_1) (ite $x2146 $x2159 $x2175))))))))))))))))))
(assert
 (let (($x2220 (= t_success_2_0 success_3)))
 (let (($x2205 (= aw_3_2 aw_2_2)))
 (let (($x2204 (= aw_3_1 aw_2_1)))
 (let (($x2203 (= aw_3_0 aw_2_0)))
 (let (($x2206 (and $x2203 $x2204 $x2205)))
 (let (($x2202 (= w_3 t_w_2_0)))
 (let (($x2199 (= err_3 false)))
 (let (($x2219 (ite (and (>= t_w_2_0 10)) (and (= t_success_2_0 true) true) (and true true (= t_success_2_0 success_2)))))
 (let (($x2201 (= t_w_2_0 (+ w_2 xn_2))))
 (let (($x2212 (<= xa_2 2)))
 (let (($x2211 (>= xa_2 1)))
 (let (($x2224 (and $x2211 $x2212 (and $x2201 (and $x2219 $x2199 true (and $x2202 $x2206 $x2220))))))
 (let (($x2198 (= xa_2 0)))
 (let (($x2210 (and $x2198 (and $x2199 $x2201 (and $x2202 $x2206 (= success_2 success_3))))))
 (let (($x2197 (= f_2 coinbase)))
 (and (and (>= xn_2 0) (>= w_3 0)) (and (>= aw_2_0 0) (>= aw_2_1 0) (>= aw_2_2 0)) (>= block_num_3 block_num_2) (ite $x2197 $x2210 $x2224))))))))))))))))))
(assert
 (let (($x2269 (= t_success_3_0 success_4)))
 (let (($x2254 (= aw_4_2 aw_3_2)))
 (let (($x2253 (= aw_4_1 aw_3_1)))
 (let (($x2252 (= aw_4_0 aw_3_0)))
 (let (($x2255 (and $x2252 $x2253 $x2254)))
 (let (($x2251 (= w_4 t_w_3_0)))
 (let (($x2248 (= err_4 false)))
 (let (($x2268 (ite (and (>= t_w_3_0 10)) (and (= t_success_3_0 true) true) (and true true (= t_success_3_0 success_3)))))
 (let (($x2250 (= t_w_3_0 (+ w_3 xn_3))))
 (let (($x2261 (<= xa_3 2)))
 (let (($x2260 (>= xa_3 1)))
 (let (($x2273 (and $x2260 $x2261 (and $x2250 (and $x2268 $x2248 true (and $x2251 $x2255 $x2269))))))
 (let (($x2247 (= xa_3 0)))
 (let (($x2259 (and $x2247 (and $x2248 $x2250 (and $x2251 $x2255 (= success_3 success_4))))))
 (let (($x2246 (= f_3 coinbase)))
 (and (and (>= xn_3 0) (>= w_4 0)) (and (>= aw_3_0 0) (>= aw_3_1 0) (>= aw_3_2 0)) (>= block_num_4 block_num_3) (ite $x2246 $x2259 $x2273))))))))))))))))))
(assert
 (let (($x2318 (= t_success_4_0 success_5)))
 (let (($x2303 (= aw_5_2 aw_4_2)))
 (let (($x2302 (= aw_5_1 aw_4_1)))
 (let (($x2301 (= aw_5_0 aw_4_0)))
 (let (($x2304 (and $x2301 $x2302 $x2303)))
 (let (($x2300 (= w_5 t_w_4_0)))
 (let (($x2297 (= err_5 false)))
 (let (($x2317 (ite (and (>= t_w_4_0 10)) (and (= t_success_4_0 true) true) (and true true (= t_success_4_0 success_4)))))
 (let (($x2299 (= t_w_4_0 (+ w_4 xn_4))))
 (let (($x2310 (<= xa_4 2)))
 (let (($x2309 (>= xa_4 1)))
 (let (($x2322 (and $x2309 $x2310 (and $x2299 (and $x2317 $x2297 true (and $x2300 $x2304 $x2318))))))
 (let (($x2296 (= xa_4 0)))
 (let (($x2308 (and $x2296 (and $x2297 $x2299 (and $x2300 $x2304 (= success_4 success_5))))))
 (let (($x2295 (= f_4 coinbase)))
 (and (and (>= xn_4 0) (>= w_5 0)) (and (>= aw_4_0 0) (>= aw_4_1 0) (>= aw_4_2 0)) (>= block_num_5 block_num_4) (ite $x2295 $x2308 $x2322))))))))))))))))))
(assert
 (let (($x2367 (= t_success_5_0 success_6)))
 (let (($x2352 (= aw_6_2 aw_5_2)))
 (let (($x2351 (= aw_6_1 aw_5_1)))
 (let (($x2350 (= aw_6_0 aw_5_0)))
 (let (($x2353 (and $x2350 $x2351 $x2352)))
 (let (($x2349 (= w_6 t_w_5_0)))
 (let (($x2346 (= err_6 false)))
 (let (($x2366 (ite (and (>= t_w_5_0 10)) (and (= t_success_5_0 true) true) (and true true (= t_success_5_0 success_5)))))
 (let (($x2348 (= t_w_5_0 (+ w_5 xn_5))))
 (let (($x2359 (<= xa_5 2)))
 (let (($x2358 (>= xa_5 1)))
 (let (($x2371 (and $x2358 $x2359 (and $x2348 (and $x2366 $x2346 true (and $x2349 $x2353 $x2367))))))
 (let (($x2345 (= xa_5 0)))
 (let (($x2357 (and $x2345 (and $x2346 $x2348 (and $x2349 $x2353 (= success_5 success_6))))))
 (let (($x2344 (= f_5 coinbase)))
 (and (and (>= xn_5 0) (>= w_6 0)) (and (>= aw_5_0 0) (>= aw_5_1 0) (>= aw_5_2 0)) (>= block_num_6 block_num_5) (ite $x2344 $x2357 $x2371))))))))))))))))))
(assert
 (let (($x2412 (exists ((xa_q Int) )(let (($x2407 (forall ((xn_q0 Int) (f_q0 Proc) (wq0 Int) (awq0_0 Int) (awq0_1 Int) (awq0_2 Int) (t_wq0_0 Int) (t_wq0_1 Int) (t_wq0_2 Int) (t_wq0_3 Int) (t_wq0_4 Int) (t_wq0_5 Int) (t_wq0_6 Int) (t_wq0_7 Int) (t_wq0_8 Int) (t_wq0_9 Int) (t_wq0_10 Int) (t_wq0_11 Int) (t_wq0_12 Int) (t_wq0_13 Int) (t_wq0_14 Int) (t_wq0_15 Int) (t_wq0_16 Int) (t_wq0_17 Int) (t_wq0_18 Int) (t_wq0_19 Int) (t_wq0_20 Int) (t_wq0_21 Int) (t_wq0_22 Int) (t_wq0_23 Int) (t_wq0_24 Int) (t_wq0_25 Int) (t_wq0_26 Int) (t_wq0_27 Int) (t_wq0_28 Int) (t_wq0_29 Int) (t_wq0_30 Int) (t_wq0_31 Int) (t_wq0_32 Int) (t_wq0_33 Int) (t_wq0_34 Int) (t_wq0_35 Int) (t_wq0_36 Int) (t_wq0_37 Int) (t_wq0_38 Int) (t_wq0_39 Int) (t_wq0_40 Int) (t_wq0_41 Int) (t_wq0_42 Int) (t_wq0_43 Int) (t_wq0_44 Int) (t_wq0_45 Int) (t_wq0_46 Int) (t_wq0_47 Int) (t_wq0_48 Int) (t_wq0_49 Int) (t_awq0_0_0 Int) (t_awq0_0_1 Int) (t_awq0_0_2 Int) (t_awq0_1_0 Int) (t_awq0_1_1 Int) (t_awq0_1_2 Int) (t_awq0_2_0 Int) (t_awq0_2_1 Int) (t_awq0_2_2 Int) (t_awq0_3_0 Int) (t_awq0_3_1 Int) (t_awq0_3_2 Int) (t_awq0_4_0 Int) (t_awq0_4_1 Int) (t_awq0_4_2 Int) (t_awq0_5_0 Int) (t_awq0_5_1 Int) (t_awq0_5_2 Int) (t_awq0_6_0 Int) (t_awq0_6_1 Int) (t_awq0_6_2 Int) (t_awq0_7_0 Int) (t_awq0_7_1 Int) (t_awq0_7_2 Int) (t_awq0_8_0 Int) (t_awq0_8_1 Int) (t_awq0_8_2 Int) (t_awq0_9_0 Int) (t_awq0_9_1 Int) (t_awq0_9_2 Int) (t_awq0_10_0 Int) (t_awq0_10_1 Int) (t_awq0_10_2 Int) (t_awq0_11_0 Int) (t_awq0_11_1 Int) (t_awq0_11_2 Int) (t_awq0_12_0 Int) (t_awq0_12_1 Int) (t_awq0_12_2 Int) (t_awq0_13_0 Int) (t_awq0_13_1 Int) (t_awq0_13_2 Int) (t_awq0_14_0 Int) (t_awq0_14_1 Int) (t_awq0_14_2 Int) (t_awq0_15_0 Int) (t_awq0_15_1 Int) (t_awq0_15_2 Int) (t_awq0_16_0 Int) (t_awq0_16_1 Int) (t_awq0_16_2 Int) (t_awq0_17_0 Int) (t_awq0_17_1 Int) (t_awq0_17_2 Int) (t_awq0_18_0 Int) (t_awq0_18_1 Int) (t_awq0_18_2 Int) (t_awq0_19_0 Int) (t_awq0_19_1 Int) (t_awq0_19_2 Int) (t_awq0_20_0 Int) (t_awq0_20_1 Int) (t_awq0_20_2 Int) (t_awq0_21_0 Int) (t_awq0_21_1 Int) (t_awq0_21_2 Int) (t_awq0_22_0 Int) (t_awq0_22_1 Int) (t_awq0_22_2 Int) (t_awq0_23_0 Int) (t_awq0_23_1 Int) (t_awq0_23_2 Int) (t_awq0_24_0 Int) (t_awq0_24_1 Int) (t_awq0_24_2 Int) (t_awq0_25_0 Int) (t_awq0_25_1 Int) (t_awq0_25_2 Int) (t_awq0_26_0 Int) (t_awq0_26_1 Int) (t_awq0_26_2 Int) (t_awq0_27_0 Int) (t_awq0_27_1 Int) (t_awq0_27_2 Int) (t_awq0_28_0 Int) (t_awq0_28_1 Int) (t_awq0_28_2 Int) (t_awq0_29_0 Int) (t_awq0_29_1 Int) (t_awq0_29_2 Int) (t_awq0_30_0 Int) (t_awq0_30_1 Int) (t_awq0_30_2 Int) (t_awq0_31_0 Int) (t_awq0_31_1 Int) (t_awq0_31_2 Int) (t_awq0_32_0 Int) (t_awq0_32_1 Int) (t_awq0_32_2 Int) (t_awq0_33_0 Int) (t_awq0_33_1 Int) (t_awq0_33_2 Int) (t_awq0_34_0 Int) (t_awq0_34_1 Int) (t_awq0_34_2 Int) (t_awq0_35_0 Int) (t_awq0_35_1 Int) (t_awq0_35_2 Int) (t_awq0_36_0 Int) (t_awq0_36_1 Int) (t_awq0_36_2 Int) (t_awq0_37_0 Int) (t_awq0_37_1 Int) (t_awq0_37_2 Int) (t_awq0_38_0 Int) (t_awq0_38_1 Int) (t_awq0_38_2 Int) (t_awq0_39_0 Int) (t_awq0_39_1 Int) (t_awq0_39_2 Int) (t_awq0_40_0 Int) (t_awq0_40_1 Int) (t_awq0_40_2 Int) (t_awq0_41_0 Int) (t_awq0_41_1 Int) (t_awq0_41_2 Int) (t_awq0_42_0 Int) (t_awq0_42_1 Int) (t_awq0_42_2 Int) (t_awq0_43_0 Int) (t_awq0_43_1 Int) (t_awq0_43_2 Int) (t_awq0_44_0 Int) (t_awq0_44_1 Int) (t_awq0_44_2 Int) (t_awq0_45_0 Int) (t_awq0_45_1 Int) (t_awq0_45_2 Int) (t_awq0_46_0 Int) (t_awq0_46_1 Int) (t_awq0_46_2 Int) (t_awq0_47_0 Int) (t_awq0_47_1 Int) (t_awq0_47_2 Int) (t_awq0_48_0 Int) (t_awq0_48_1 Int) (t_awq0_48_2 Int) (t_awq0_49_0 Int) (t_awq0_49_1 Int) (t_awq0_49_2 Int) (err_q0 Bool) (successq0 Bool) (t_successq0_0 Bool) (t_successq0_1 Bool) (t_successq0_2 Bool) (t_successq0_3 Bool) (t_successq0_4 Bool) (t_successq0_5 Bool) (t_successq0_6 Bool) (t_successq0_7 Bool) (t_successq0_8 Bool) (t_successq0_9 Bool) (t_successq0_10 Bool) (t_successq0_11 Bool) (t_successq0_12 Bool) (t_successq0_13 Bool) (t_successq0_14 Bool) (t_successq0_15 Bool) (t_successq0_16 Bool) (t_successq0_17 Bool) (t_successq0_18 Bool) (t_successq0_19 Bool) (t_successq0_20 Bool) (t_successq0_21 Bool) (t_successq0_22 Bool) (t_successq0_23 Bool) (t_successq0_24 Bool) (t_successq0_25 Bool) (t_successq0_26 Bool) (t_successq0_27 Bool) (t_successq0_28 Bool) (t_successq0_29 Bool) (t_successq0_30 Bool) (t_successq0_31 Bool) (t_successq0_32 Bool) (t_successq0_33 Bool) (t_successq0_34 Bool) (t_successq0_35 Bool) (t_successq0_36 Bool) (t_successq0_37 Bool) (t_successq0_38 Bool) (t_successq0_39 Bool) (t_successq0_40 Bool) (t_successq0_41 Bool) (t_successq0_42 Bool) (t_successq0_43 Bool) (t_successq0_44 Bool) (t_successq0_45 Bool) (t_successq0_46 Bool) (t_successq0_47 Bool) (t_successq0_48 Bool) (t_successq0_49 Bool) )(let (($x2691 (and (= awq0_0 aw_6_0) (= awq0_1 aw_6_1) (= awq0_2 aw_6_2))))
(let (($x2692 (= wq0 t_wq0_0)))
(let (($x2694 (= err_q0 false)))
(let (($x2701 (ite (and (>= t_wq0_0 10)) (and (= t_successq0_0 true) true) (and true true (= t_successq0_0 success_6)))))
(let (($x2704 (= t_wq0_0 (+ w_6 xn_q0))))
(let (($x2400 (and (>= xa_q 1) (<= xa_q 2) (and $x2704 (and $x2701 $x2694 true (and $x2692 $x2691 (= t_successq0_0 successq0)))))))
(let (($x2402 (and (= xa_q 0) (and $x2694 $x2704 (and $x2692 $x2691 (= success_6 successq0))))))
(let (($x2404 (and (and (>= xn_q0 0) (>= wq0 0)) (and (>= aw_6_0 0) (>= aw_6_1 0) (>= aw_6_2 0)) (>= block_num_6 block_num_6) (ite (= f_q0 coinbase) $x2402 $x2400))))
(or (not $x2404) (not successq0)))))))))))
))
(and (and (>= xa_q 1) (<= xa_q 2)) (> w_6 0) $x2407)))
))
(and $x2412)))
(check-sat)

(get-model)