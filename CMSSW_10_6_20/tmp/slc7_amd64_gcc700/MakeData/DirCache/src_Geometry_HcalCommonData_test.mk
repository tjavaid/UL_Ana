ifeq ($(strip $(testHcalSimNumberingTester)),)
testHcalSimNumberingTester := self/src/Geometry/HcalCommonData/test
testHcalSimNumberingTester_files := $(patsubst src/Geometry/HcalCommonData/test/%,%,$(foreach file,HcalSimNumberingTester.cc,$(eval xfile:=$(wildcard src/Geometry/HcalCommonData/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HcalCommonData/test/$(file). Please fix src/Geometry/HcalCommonData/test/BuildFile.))))
testHcalSimNumberingTester_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/test/BuildFile
testHcalSimNumberingTester_LOC_USE := self  Geometry/HcalCommonData FWCore/Framework FWCore/ParameterSet FWCore/Utilities Geometry/Records CondFormats/GeometryObjects
testHcalSimNumberingTester_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testHcalSimNumberingTester,testHcalSimNumberingTester,$(SCRAMSTORENAME_LIB),src/Geometry/HcalCommonData/test))
testHcalSimNumberingTester_PACKAGE := self/src/Geometry/HcalCommonData/test
ALL_PRODS += testHcalSimNumberingTester
testHcalSimNumberingTester_INIT_FUNC        += $$(eval $$(call Library,testHcalSimNumberingTester,src/Geometry/HcalCommonData/test,src_Geometry_HcalCommonData_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testHcalSimNumberingTester_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testHcalSimNumberingTester,src/Geometry/HcalCommonData/test))
endif
ifeq ($(strip $(testHcalParametersAnalyzer)),)
testHcalParametersAnalyzer := self/src/Geometry/HcalCommonData/test
testHcalParametersAnalyzer_files := $(patsubst src/Geometry/HcalCommonData/test/%,%,$(foreach file,HcalParametersAnalyzer.cc,$(eval xfile:=$(wildcard src/Geometry/HcalCommonData/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HcalCommonData/test/$(file). Please fix src/Geometry/HcalCommonData/test/BuildFile.))))
testHcalParametersAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/test/BuildFile
testHcalParametersAnalyzer_LOC_USE := self  Geometry/HcalCommonData FWCore/Framework FWCore/ParameterSet FWCore/Utilities Geometry/Records CondFormats/GeometryObjects
testHcalParametersAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testHcalParametersAnalyzer,testHcalParametersAnalyzer,$(SCRAMSTORENAME_LIB),src/Geometry/HcalCommonData/test))
testHcalParametersAnalyzer_PACKAGE := self/src/Geometry/HcalCommonData/test
ALL_PRODS += testHcalParametersAnalyzer
testHcalParametersAnalyzer_INIT_FUNC        += $$(eval $$(call Library,testHcalParametersAnalyzer,src/Geometry/HcalCommonData/test,src_Geometry_HcalCommonData_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testHcalParametersAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testHcalParametersAnalyzer,src/Geometry/HcalCommonData/test))
endif
ifeq ($(strip $(testHcalRecNumberingTester)),)
testHcalRecNumberingTester := self/src/Geometry/HcalCommonData/test
testHcalRecNumberingTester_files := $(patsubst src/Geometry/HcalCommonData/test/%,%,$(foreach file,HcalRecNumberingTester.cc,$(eval xfile:=$(wildcard src/Geometry/HcalCommonData/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HcalCommonData/test/$(file). Please fix src/Geometry/HcalCommonData/test/BuildFile.))))
testHcalRecNumberingTester_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/test/BuildFile
testHcalRecNumberingTester_LOC_USE := self  Geometry/HcalCommonData FWCore/Framework FWCore/ParameterSet FWCore/Utilities Geometry/Records CondFormats/GeometryObjects
testHcalRecNumberingTester_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testHcalRecNumberingTester,testHcalRecNumberingTester,$(SCRAMSTORENAME_LIB),src/Geometry/HcalCommonData/test))
testHcalRecNumberingTester_PACKAGE := self/src/Geometry/HcalCommonData/test
ALL_PRODS += testHcalRecNumberingTester
testHcalRecNumberingTester_INIT_FUNC        += $$(eval $$(call Library,testHcalRecNumberingTester,src/Geometry/HcalCommonData/test,src_Geometry_HcalCommonData_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testHcalRecNumberingTester_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testHcalRecNumberingTester,src/Geometry/HcalCommonData/test))
endif
ALL_COMMONRULES += src_Geometry_HcalCommonData_test
src_Geometry_HcalCommonData_test_parent := Geometry/HcalCommonData
src_Geometry_HcalCommonData_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HcalCommonData_test,src/Geometry/HcalCommonData/test,TEST))
