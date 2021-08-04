ifeq ($(strip $(CommonTools/PileupAlgos)),)
ALL_COMMONRULES += src_CommonTools_PileupAlgos_src
src_CommonTools_PileupAlgos_src_parent := CommonTools/PileupAlgos
src_CommonTools_PileupAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_PileupAlgos_src,src/CommonTools/PileupAlgos/src,LIBRARY))
CommonToolsPileupAlgos := self/CommonTools/PileupAlgos
CommonTools/PileupAlgos := CommonToolsPileupAlgos
CommonToolsPileupAlgos_files := $(patsubst src/CommonTools/PileupAlgos/src/%,%,$(wildcard $(foreach dir,src/CommonTools/PileupAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsPileupAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/PileupAlgos/BuildFile
CommonToolsPileupAlgos_LOC_USE := self  DataFormats/Common DataFormats/ParticleFlowCandidate FWCore/ParameterSet root rootcore fastjet
CommonToolsPileupAlgos_EX_LIB   := CommonToolsPileupAlgos
CommonToolsPileupAlgos_EX_USE   := $(foreach d,$(CommonToolsPileupAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsPileupAlgos_PACKAGE := self/src/CommonTools/PileupAlgos/src
ALL_PRODS += CommonToolsPileupAlgos
CommonToolsPileupAlgos_CLASS := LIBRARY
CommonTools/PileupAlgos_forbigobj+=CommonToolsPileupAlgos
CommonToolsPileupAlgos_INIT_FUNC        += $$(eval $$(call Library,CommonToolsPileupAlgos,src/CommonTools/PileupAlgos/src,src_CommonTools_PileupAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
