ALL_COMMONRULES += src_CommonTools_PileupAlgos_test
src_CommonTools_PileupAlgos_test_parent := CommonTools/PileupAlgos
src_CommonTools_PileupAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_PileupAlgos_test,src/CommonTools/PileupAlgos/test,TEST))
