.PHONY: tar

install:
	#if [ ! -d csl_tci6616_1.0.0.21 ]; then tar -xvzf csl_tci6616_1.0.0.21.tar.gz; fi
	if [ ! -d dsplib_c66x_3_2_0_1 ]; then tar -xvzf dsplib_c66x_3_2_0_1.tar.gz; fi
	#if [ ! -d EVMTCI6616_BSL_BETA_v0.9.2 ]; then tar -xvzf EVMTCI6616_BSL_BETA_v0.9.2.tar.gz; fi
	#if [ ! -d iqmath ]; then tar -xvzf iqmath.tar.gz; fi
	if [ ! -d pdk_C6670_1_1_2_5 ]; then tar -xvzf pdk_C6670_1_1_2_5.tar.gz; fi
	#if [ ! -d pdk_keystone2_3_00_03_15]; then tar -xvzf pdk_keystone2_3_00_03_15.tar.gz; fi
	#if [ ! -d unity ]; then tar -xvzf unity.tar.gz; fi
	#
	cp dsplib_c66x_3_2_0_1/packages/ti/dsplib/lib/dsplib.ae66e dsplib_c66x_3_2_0_1/packages/ti/dsplib/lib/lib.dsplib.a
	if [ ! -d dsplib_twiddles/ ]; then mkdir dsplib_twiddles; fi
	cp dsplib_c66x_3_2_0_1/packages/ti/dsplib/src/DSP_fft16x16/c66/gen_twiddle_fft16x16.c dsplib_twiddles/
	cp dsplib_c66x_3_2_0_1/packages/ti/dsplib/src/DSP_ifft16x16/c66/gen_twiddle_ifft16x16.c dsplib_twiddles/
	cp dsplib_c66x_3_2_0_1/packages/ti/dsplib/src/DSP_fft16x16/c66/gen_twiddle_fft16x16.h dsplib_twiddles/
	cp dsplib_c66x_3_2_0_1/packages/ti/dsplib/src/DSP_ifft16x16/c66/gen_twiddle_ifft16x16.h dsplib_twiddles/
	#
	#cp -r dsplib_twiddles ${ORILIB_INC_DIR}

twiddles:
	cp -r dsplib_twiddles ${ORILIB_INC_DIR}

clean:
	rm -rf csl_tci6616_1.0.0.21
	rm -rf dsplib_c66x_3_2_0_1
	rm -rf EVMTCI6616_BSL_BETA_v0.9.2
	rm -rf iqmath
	rm -rf pdk_C6670_1_1_2_5
	rm -rf pdk_keystone2_3_00_03_15
	rm -rf unity
	rm -rf dsplib_twiddles
