ifeq ($(strip $(MelaAnalytics/CandidateLOCaster)),)
ALL_COMMONRULES += src_MelaAnalytics_CandidateLOCaster_src
src_MelaAnalytics_CandidateLOCaster_src_parent := MelaAnalytics/CandidateLOCaster
src_MelaAnalytics_CandidateLOCaster_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MelaAnalytics_CandidateLOCaster_src,src/MelaAnalytics/CandidateLOCaster/src,LIBRARY))
MelaAnalyticsCandidateLOCaster := self/MelaAnalytics/CandidateLOCaster
MelaAnalytics/CandidateLOCaster := MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_files := $(patsubst src/MelaAnalytics/CandidateLOCaster/src/%,%,$(wildcard $(foreach dir,src/MelaAnalytics/CandidateLOCaster/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MelaAnalyticsCandidateLOCaster_BuildFile    := $(WORKINGDIR)/cache/bf/src/MelaAnalytics/CandidateLOCaster/BuildFile
MelaAnalyticsCandidateLOCaster_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/MelaAnalytics/CandidateLOCaster/interface/ -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
MelaAnalyticsCandidateLOCaster_LOC_USE := self  root rootmath roofit roofitcore JHUGenMELA/MELA
MelaAnalyticsCandidateLOCaster_EX_LIB   := MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_EX_USE   := $(foreach d,$(MelaAnalyticsCandidateLOCaster_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MelaAnalyticsCandidateLOCaster_PACKAGE := self/src/MelaAnalytics/CandidateLOCaster/src
ALL_PRODS += MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_CLASS := LIBRARY
MelaAnalytics/CandidateLOCaster_forbigobj+=MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_INIT_FUNC        += $$(eval $$(call Library,MelaAnalyticsCandidateLOCaster,src/MelaAnalytics/CandidateLOCaster/src,src_MelaAnalytics_CandidateLOCaster_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
