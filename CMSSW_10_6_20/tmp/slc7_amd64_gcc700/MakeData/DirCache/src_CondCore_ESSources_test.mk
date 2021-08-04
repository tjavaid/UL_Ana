ifeq ($(strip $(PedestalsByLabelAnalyzer)),)
PedestalsByLabelAnalyzer := self/src/CondCore/ESSources/test
PedestalsByLabelAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,stubs/PedestalsByLabelAnalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
PedestalsByLabelAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
PedestalsByLabelAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
PedestalsByLabelAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PedestalsByLabelAnalyzer,PedestalsByLabelAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
PedestalsByLabelAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += PedestalsByLabelAnalyzer
PedestalsByLabelAnalyzer_INIT_FUNC        += $$(eval $$(call Library,PedestalsByLabelAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PedestalsByLabelAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PedestalsByLabelAnalyzer,src/CondCore/ESSources/test))
endif
ifeq ($(strip $(PedestalsAnalyzer)),)
PedestalsAnalyzer := self/src/CondCore/ESSources/test
PedestalsAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,stubs/PedestalsAnalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
PedestalsAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
PedestalsAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
PedestalsAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PedestalsAnalyzer,PedestalsAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
PedestalsAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += PedestalsAnalyzer
PedestalsAnalyzer_INIT_FUNC        += $$(eval $$(call Library,PedestalsAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PedestalsAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PedestalsAnalyzer,src/CondCore/ESSources/test))
endif
ifeq ($(strip $(NoisesAnalyzer)),)
NoisesAnalyzer := self/src/CondCore/ESSources/test
NoisesAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,SiStripTest/noiseanalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
NoisesAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
NoisesAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
NoisesAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,NoisesAnalyzer,NoisesAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
NoisesAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += NoisesAnalyzer
NoisesAnalyzer_INIT_FUNC        += $$(eval $$(call Library,NoisesAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
NoisesAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,NoisesAnalyzer,src/CondCore/ESSources/test))
endif
ifeq ($(strip $(ExEfficiencyByLabelAnalyzer)),)
ExEfficiencyByLabelAnalyzer := self/src/CondCore/ESSources/test
ExEfficiencyByLabelAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,stubs/EfficiencyByLabelAnalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
ExEfficiencyByLabelAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
ExEfficiencyByLabelAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
ExEfficiencyByLabelAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ExEfficiencyByLabelAnalyzer,ExEfficiencyByLabelAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
ExEfficiencyByLabelAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += ExEfficiencyByLabelAnalyzer
ExEfficiencyByLabelAnalyzer_INIT_FUNC        += $$(eval $$(call Library,ExEfficiencyByLabelAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
ExEfficiencyByLabelAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,ExEfficiencyByLabelAnalyzer,src/CondCore/ESSources/test))
endif
ALL_COMMONRULES += src_CondCore_ESSources_test
src_CondCore_ESSources_test_parent := CondCore/ESSources
src_CondCore_ESSources_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondCore_ESSources_test,src/CondCore/ESSources/test,TEST))
