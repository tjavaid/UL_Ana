ifeq ($(strip $(UFHZZAnalysisRun2FSRPhotons_plugins)),)
UFHZZAnalysisRun2FSRPhotons_plugins := self/src/UFHZZAnalysisRun2/FSRPhotons/plugins
PLUGINS:=yes
UFHZZAnalysisRun2FSRPhotons_plugins_files := $(patsubst src/UFHZZAnalysisRun2/FSRPhotons/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/UFHZZAnalysisRun2/FSRPhotons/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/UFHZZAnalysisRun2/FSRPhotons/plugins/$(file). Please fix src/UFHZZAnalysisRun2/FSRPhotons/plugins/BuildFile.))))
UFHZZAnalysisRun2FSRPhotons_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/FSRPhotons/plugins/BuildFile
UFHZZAnalysisRun2FSRPhotons_plugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet CommonTools/UtilAlgos RecoEgamma/EgammaTools MagneticField/Engine MagneticField/Records TrackingTools/TrackRefitter DataFormats/ParticleFlowCandidate DataFormats/Candidate DataFormats/PatCandidates DataFormats/METReco RecoMET/METAlgorithms
UFHZZAnalysisRun2FSRPhotons_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2FSRPhotons_plugins,UFHZZAnalysisRun2FSRPhotons_plugins,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/FSRPhotons/plugins))
UFHZZAnalysisRun2FSRPhotons_plugins_PACKAGE := self/src/UFHZZAnalysisRun2/FSRPhotons/plugins
ALL_PRODS += UFHZZAnalysisRun2FSRPhotons_plugins
UFHZZAnalysisRun2/FSRPhotons_forbigobj+=UFHZZAnalysisRun2FSRPhotons_plugins
UFHZZAnalysisRun2FSRPhotons_plugins_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2FSRPhotons_plugins,src/UFHZZAnalysisRun2/FSRPhotons/plugins,src_UFHZZAnalysisRun2_FSRPhotons_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UFHZZAnalysisRun2FSRPhotons_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UFHZZAnalysisRun2FSRPhotons_plugins,src/UFHZZAnalysisRun2/FSRPhotons/plugins))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_FSRPhotons_plugins
src_UFHZZAnalysisRun2_FSRPhotons_plugins_parent := UFHZZAnalysisRun2/FSRPhotons
src_UFHZZAnalysisRun2_FSRPhotons_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_FSRPhotons_plugins,src/UFHZZAnalysisRun2/FSRPhotons/plugins,PLUGINS))
