ifeq ($(strip $(MelaAnalytics/GenericMEComputer)),)
ALL_COMMONRULES += src_MelaAnalytics_GenericMEComputer_src
src_MelaAnalytics_GenericMEComputer_src_parent := MelaAnalytics/GenericMEComputer
src_MelaAnalytics_GenericMEComputer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MelaAnalytics_GenericMEComputer_src,src/MelaAnalytics/GenericMEComputer/src,LIBRARY))
MelaAnalyticsGenericMEComputer := self/MelaAnalytics/GenericMEComputer
MelaAnalytics/GenericMEComputer := MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_files := $(patsubst src/MelaAnalytics/GenericMEComputer/src/%,%,$(wildcard $(foreach dir,src/MelaAnalytics/GenericMEComputer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MelaAnalyticsGenericMEComputer_BuildFile    := $(WORKINGDIR)/cache/bf/src/MelaAnalytics/GenericMEComputer/BuildFile
MelaAnalyticsGenericMEComputer_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/MelaAnalytics/GenericMEComputer/interface/ -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
MelaAnalyticsGenericMEComputer_LOC_USE := self  root rootmath roofit roofitcore JHUGenMELA/MELA
MelaAnalyticsGenericMEComputer_EX_LIB   := MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_EX_USE   := $(foreach d,$(MelaAnalyticsGenericMEComputer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MelaAnalyticsGenericMEComputer_PACKAGE := self/src/MelaAnalytics/GenericMEComputer/src
ALL_PRODS += MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_CLASS := LIBRARY
MelaAnalytics/GenericMEComputer_forbigobj+=MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_INIT_FUNC        += $$(eval $$(call Library,MelaAnalyticsGenericMEComputer,src/MelaAnalytics/GenericMEComputer/src,src_MelaAnalytics_GenericMEComputer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
