ifeq ($(strip $(Alignment/MillePedeAlignmentAlgorithm)),)
ALL_COMMONRULES += src_Alignment_MillePedeAlignmentAlgorithm_src
src_Alignment_MillePedeAlignmentAlgorithm_src_parent := Alignment/MillePedeAlignmentAlgorithm
src_Alignment_MillePedeAlignmentAlgorithm_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Alignment_MillePedeAlignmentAlgorithm_src,src/Alignment/MillePedeAlignmentAlgorithm/src,LIBRARY))
AlignmentMillePedeAlignmentAlgorithm := self/Alignment/MillePedeAlignmentAlgorithm
Alignment/MillePedeAlignmentAlgorithm := AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_files := $(patsubst src/Alignment/MillePedeAlignmentAlgorithm/src/%,%,$(wildcard $(foreach dir,src/Alignment/MillePedeAlignmentAlgorithm/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AlignmentMillePedeAlignmentAlgorithm_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/MillePedeAlignmentAlgorithm/BuildFile
AlignmentMillePedeAlignmentAlgorithm_LOC_USE := self  Alignment/CommonAlignment Alignment/CommonAlignmentAlgorithm Alignment/CommonAlignmentParametrization Alignment/MuonAlignment Alignment/SurveyAnalysis Alignment/ReferenceTrajectories CondFormats/PCLConfig DataFormats/CLHEP DataFormats/SiStripDetId DataFormats/GeometryVector DataFormats/TrackReco FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit rootcore
AlignmentMillePedeAlignmentAlgorithm_EX_LIB   := AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_EX_USE   := $(foreach d,$(AlignmentMillePedeAlignmentAlgorithm_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentMillePedeAlignmentAlgorithm_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/src
ALL_PRODS += AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_CLASS := LIBRARY
Alignment/MillePedeAlignmentAlgorithm_forbigobj+=AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_INIT_FUNC        += $$(eval $$(call Library,AlignmentMillePedeAlignmentAlgorithm,src/Alignment/MillePedeAlignmentAlgorithm/src,src_Alignment_MillePedeAlignmentAlgorithm_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
