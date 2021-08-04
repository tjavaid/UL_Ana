ifeq ($(strip $(Validation/Performance)),)
ALL_COMMONRULES += src_Validation_Performance_src
src_Validation_Performance_src_parent := Validation/Performance
src_Validation_Performance_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Validation_Performance_src,src/Validation/Performance/src,LIBRARY))
ValidationPerformance := self/Validation/Performance
Validation/Performance := ValidationPerformance
ValidationPerformance_files := $(patsubst src/Validation/Performance/src/%,%,$(wildcard $(foreach dir,src/Validation/Performance/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
ValidationPerformance_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/Performance/BuildFile
ValidationPerformance_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/Common DataFormats/HLTReco DQMServices/Core root
ValidationPerformance_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ValidationPerformance,ValidationPerformance,$(SCRAMSTORENAME_LIB),src/Validation/Performance/src))
ValidationPerformance_PACKAGE := self/src/Validation/Performance/src
ALL_PRODS += ValidationPerformance
ValidationPerformance_CLASS := LIBRARY
Validation/Performance_forbigobj+=ValidationPerformance
ValidationPerformance_INIT_FUNC        += $$(eval $$(call Library,ValidationPerformance,src/Validation/Performance/src,src_Validation_Performance_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
