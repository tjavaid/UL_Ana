ifeq ($(strip $(testCaloSimHits)),)
testCaloSimHits := self/src/SimG4CMS/Calo/test
testCaloSimHits_files := $(patsubst src/SimG4CMS/Calo/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimG4CMS/Calo/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimG4CMS/Calo/test/$(file). Please fix src/SimG4CMS/Calo/test/BuildFile.))))
testCaloSimHits_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Calo/test/BuildFile
testCaloSimHits_LOC_USE := self  CommonTools/UtilAlgos DataFormats/EcalDetId DataFormats/HcalDetId FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry Geometry/HcalCommonData SimDataFormats/CaloHit SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts SimG4CMS/Calo boost root clhep
testCaloSimHits_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testCaloSimHits,testCaloSimHits,$(SCRAMSTORENAME_LIB),src/SimG4CMS/Calo/test))
testCaloSimHits_PACKAGE := self/src/SimG4CMS/Calo/test
ALL_PRODS += testCaloSimHits
testCaloSimHits_INIT_FUNC        += $$(eval $$(call Library,testCaloSimHits,src/SimG4CMS/Calo/test,src_SimG4CMS_Calo_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testCaloSimHits_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testCaloSimHits,src/SimG4CMS/Calo/test))
endif
ALL_COMMONRULES += src_SimG4CMS_Calo_test
src_SimG4CMS_Calo_test_parent := SimG4CMS/Calo
src_SimG4CMS_Calo_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Calo_test,src/SimG4CMS/Calo/test,TEST))
