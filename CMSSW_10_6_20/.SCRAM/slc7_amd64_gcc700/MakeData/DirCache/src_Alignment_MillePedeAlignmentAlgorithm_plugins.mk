ifeq ($(strip $(AlignmentMillePedeAlignmentAlgorithmAuto)),)
AlignmentMillePedeAlignmentAlgorithmAuto := self/src/Alignment/MillePedeAlignmentAlgorithm/plugins
PLUGINS:=yes
AlignmentMillePedeAlignmentAlgorithmAuto_files := $(patsubst src/Alignment/MillePedeAlignmentAlgorithm/plugins/%,%,$(wildcard $(foreach dir,src/Alignment/MillePedeAlignmentAlgorithm/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AlignmentMillePedeAlignmentAlgorithmAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/MillePedeAlignmentAlgorithm/plugins/BuildFile
AlignmentMillePedeAlignmentAlgorithmAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry CommonTools/UtilAlgos CondFormats/Common CondFormats/GeometryObjects DataFormats/HepMCCandidate DataFormats/TrackerCommon Geometry/TrackerGeometryBuilder DQMServices/Core Alignment/MillePedeAlignmentAlgorithm classlib
AlignmentMillePedeAlignmentAlgorithmAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AlignmentMillePedeAlignmentAlgorithmAuto,AlignmentMillePedeAlignmentAlgorithmAuto,$(SCRAMSTORENAME_LIB),src/Alignment/MillePedeAlignmentAlgorithm/plugins))
AlignmentMillePedeAlignmentAlgorithmAuto_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/plugins
ALL_PRODS += AlignmentMillePedeAlignmentAlgorithmAuto
Alignment/MillePedeAlignmentAlgorithm_forbigobj+=AlignmentMillePedeAlignmentAlgorithmAuto
AlignmentMillePedeAlignmentAlgorithmAuto_INIT_FUNC        += $$(eval $$(call Library,AlignmentMillePedeAlignmentAlgorithmAuto,src/Alignment/MillePedeAlignmentAlgorithm/plugins,src_Alignment_MillePedeAlignmentAlgorithm_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
AlignmentMillePedeAlignmentAlgorithmAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,AlignmentMillePedeAlignmentAlgorithmAuto,src/Alignment/MillePedeAlignmentAlgorithm/plugins))
endif
ALL_COMMONRULES += src_Alignment_MillePedeAlignmentAlgorithm_plugins
src_Alignment_MillePedeAlignmentAlgorithm_plugins_parent := Alignment/MillePedeAlignmentAlgorithm
src_Alignment_MillePedeAlignmentAlgorithm_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_MillePedeAlignmentAlgorithm_plugins,src/Alignment/MillePedeAlignmentAlgorithm/plugins,PLUGINS))
