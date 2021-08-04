ALL_COMMONRULES += src_CondCore_ESSources_bin
src_CondCore_ESSources_bin_parent := CondCore/ESSources
src_CondCore_ESSources_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondCore_ESSources_bin,src/CondCore/ESSources/bin,BINARY))
