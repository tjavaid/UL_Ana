ALL_COMMONRULES += src_KaMuCa_Calibration_test
src_KaMuCa_Calibration_test_parent := KaMuCa/Calibration
src_KaMuCa_Calibration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_KaMuCa_Calibration_test,src/KaMuCa/Calibration/test,TEST))
