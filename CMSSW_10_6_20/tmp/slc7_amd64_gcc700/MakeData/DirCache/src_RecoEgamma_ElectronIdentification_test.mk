ifeq ($(strip $(runtestRecoEgammaElectronIdentification)),)
runtestRecoEgammaElectronIdentification := self/src/RecoEgamma/ElectronIdentification/test
runtestRecoEgammaElectronIdentification_files := $(patsubst src/RecoEgamma/ElectronIdentification/test/%,%,$(foreach file,runtestRecoEgammaElectronIdentification.cpp,$(eval xfile:=$(wildcard src/RecoEgamma/ElectronIdentification/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/ElectronIdentification/test/$(file). Please fix src/RecoEgamma/ElectronIdentification/test/BuildFile.))))
runtestRecoEgammaElectronIdentification_TEST_RUNNER_CMD :=  runtestRecoEgammaElectronIdentification  /bin/bash RecoEgamma/ElectronIdentification/test runtests.sh
runtestRecoEgammaElectronIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/test/BuildFile
runtestRecoEgammaElectronIdentification_LOC_USE := self  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates DataFormats/EcalRecHit CommonTools/UtilAlgos root rootcore RecoEgamma/EgammaTools RecoEgamma/ElectronIdentification FWCore/Utilities
runtestRecoEgammaElectronIdentification_PACKAGE := self/src/RecoEgamma/ElectronIdentification/test
ALL_PRODS += runtestRecoEgammaElectronIdentification
runtestRecoEgammaElectronIdentification_INIT_FUNC        += $$(eval $$(call Binary,runtestRecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/test,src_RecoEgamma_ElectronIdentification_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
runtestRecoEgammaElectronIdentification_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,runtestRecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/test))
endif
ifeq ($(strip $(RecoEgammaElectronIdentificationVIDExample)),)
RecoEgammaElectronIdentificationVIDExample := self/src/RecoEgamma/ElectronIdentification/test
RecoEgammaElectronIdentificationVIDExample_files := $(patsubst src/RecoEgamma/ElectronIdentification/test/%,%,$(foreach file,VIDUsageExample.cc,$(eval xfile:=$(wildcard src/RecoEgamma/ElectronIdentification/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/ElectronIdentification/test/$(file). Please fix src/RecoEgamma/ElectronIdentification/test/BuildFile.))))
RecoEgammaElectronIdentificationVIDExample_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/test/BuildFile
RecoEgammaElectronIdentificationVIDExample_LOC_USE := self  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates DataFormats/EcalRecHit CommonTools/UtilAlgos root rootcore RecoEgamma/EgammaTools RecoEgamma/ElectronIdentification
RecoEgammaElectronIdentificationVIDExample_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaElectronIdentificationVIDExample,RecoEgammaElectronIdentificationVIDExample,$(SCRAMSTORENAME_LIB),src/RecoEgamma/ElectronIdentification/test))
RecoEgammaElectronIdentificationVIDExample_PACKAGE := self/src/RecoEgamma/ElectronIdentification/test
ALL_PRODS += RecoEgammaElectronIdentificationVIDExample
RecoEgammaElectronIdentificationVIDExample_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaElectronIdentificationVIDExample,src/RecoEgamma/ElectronIdentification/test,src_RecoEgamma_ElectronIdentification_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaElectronIdentificationVIDExample_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaElectronIdentificationVIDExample,src/RecoEgamma/ElectronIdentification/test))
endif
ALL_COMMONRULES += src_RecoEgamma_ElectronIdentification_test
src_RecoEgamma_ElectronIdentification_test_parent := RecoEgamma/ElectronIdentification
src_RecoEgamma_ElectronIdentification_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_ElectronIdentification_test,src/RecoEgamma/ElectronIdentification/test,TEST))
