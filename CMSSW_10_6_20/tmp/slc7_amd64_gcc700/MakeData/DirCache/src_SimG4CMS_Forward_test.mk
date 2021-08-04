ifeq ($(strip $(SimG4CMSForwardTest)),)
SimG4CMSForwardTest := self/src/SimG4CMS/Forward/test
SimG4CMSForwardTest_files := $(patsubst src/SimG4CMS/Forward/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimG4CMS/Forward/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimG4CMS/Forward/test/$(file). Please fix src/SimG4CMS/Forward/test/BuildFile.))))
SimG4CMSForwardTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Forward/test/BuildFile
SimG4CMSForwardTest_LOC_FLAGS_REM_CXXFLAGS   := -Werror=unused-variable
SimG4CMSForwardTest_LOC_USE := self  FWCore/PluginManager SimG4CMS/Forward DataFormats/Math SimDataFormats/CaloTest FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger boost geant4core root rootmath
SimG4CMSForwardTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimG4CMSForwardTest,SimG4CMSForwardTest,$(SCRAMSTORENAME_LIB),src/SimG4CMS/Forward/test))
SimG4CMSForwardTest_PACKAGE := self/src/SimG4CMS/Forward/test
ALL_PRODS += SimG4CMSForwardTest
SimG4CMSForwardTest_INIT_FUNC        += $$(eval $$(call Library,SimG4CMSForwardTest,src/SimG4CMS/Forward/test,src_SimG4CMS_Forward_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
SimG4CMSForwardTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,SimG4CMSForwardTest,src/SimG4CMS/Forward/test))
endif
ALL_COMMONRULES += src_SimG4CMS_Forward_test
src_SimG4CMS_Forward_test_parent := SimG4CMS/Forward
src_SimG4CMS_Forward_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Forward_test,src/SimG4CMS/Forward/test,TEST))
