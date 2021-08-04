ifeq ($(strip $(MelaAnalytics/EventContainer)),)
ALL_COMMONRULES += src_MelaAnalytics_EventContainer_src
src_MelaAnalytics_EventContainer_src_parent := MelaAnalytics/EventContainer
src_MelaAnalytics_EventContainer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MelaAnalytics_EventContainer_src,src/MelaAnalytics/EventContainer/src,LIBRARY))
MelaAnalyticsEventContainer := self/MelaAnalytics/EventContainer
MelaAnalytics/EventContainer := MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_files := $(patsubst src/MelaAnalytics/EventContainer/src/%,%,$(wildcard $(foreach dir,src/MelaAnalytics/EventContainer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MelaAnalyticsEventContainer_BuildFile    := $(WORKINGDIR)/cache/bf/src/MelaAnalytics/EventContainer/BuildFile
MelaAnalyticsEventContainer_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/MelaAnalytics/EventContainer/interface/ -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
MelaAnalyticsEventContainer_LOC_USE := self  root rootmath roofit roofitcore JHUGenMELA/MELA
MelaAnalyticsEventContainer_EX_LIB   := MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_EX_USE   := $(foreach d,$(MelaAnalyticsEventContainer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MelaAnalyticsEventContainer_PACKAGE := self/src/MelaAnalytics/EventContainer/src
ALL_PRODS += MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_CLASS := LIBRARY
MelaAnalytics/EventContainer_forbigobj+=MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_INIT_FUNC        += $$(eval $$(call Library,MelaAnalyticsEventContainer,src/MelaAnalytics/EventContainer/src,src_MelaAnalytics_EventContainer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
