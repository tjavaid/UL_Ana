ifeq ($(strip $(SimDigiDumper)),)
SimDigiDumper := self/src/Validation/Performance/test
SimDigiDumper_files := $(patsubst src/Validation/Performance/test/%,%,$(foreach file,SimDigiDumper.cc,$(eval xfile:=$(wildcard src/Validation/Performance/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Validation/Performance/test/$(file). Please fix src/Validation/Performance/test/BuildFile.))))
SimDigiDumper_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/Performance/test/BuildFile
SimDigiDumper_LOC_USE := self  DataFormats/Common DataFormats/EcalDigi DataFormats/HcalDigi DataFormats/SiStripDigi DataFormats/SiPixelDigi DataFormats/DTDigi DataFormats/CSCDigi DataFormats/RPCDigi FWCore/Framework FWCore/MessageLogger
SimDigiDumper_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimDigiDumper,SimDigiDumper,$(SCRAMSTORENAME_LIB),src/Validation/Performance/test))
SimDigiDumper_PACKAGE := self/src/Validation/Performance/test
ALL_PRODS += SimDigiDumper
SimDigiDumper_INIT_FUNC        += $$(eval $$(call Library,SimDigiDumper,src/Validation/Performance/test,src_Validation_Performance_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
SimDigiDumper_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,SimDigiDumper,src/Validation/Performance/test))
endif
ALL_COMMONRULES += src_Validation_Performance_test
src_Validation_Performance_test_parent := Validation/Performance
src_Validation_Performance_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_Performance_test,src/Validation/Performance/test,TEST))
