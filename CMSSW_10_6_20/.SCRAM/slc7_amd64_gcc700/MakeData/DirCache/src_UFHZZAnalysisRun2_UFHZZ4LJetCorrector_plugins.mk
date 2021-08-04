ifeq ($(strip $(UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto)),)
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto := self/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins
PLUGINS:=yes
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_files := $(patsubst src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins/BuildFile
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/PatCandidates DataFormats/JetReco DataFormats/METReco DataFormats/Common PhysicsTools/UtilAlgos FWCore/ServiceRegistry TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos Geometry/CaloTopology Geometry/Records JetMETCorrections/Objects CondFormats/JetMETObjects
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins))
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_PACKAGE := self/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins
ALL_PRODS += UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto
UFHZZAnalysisRun2/UFHZZ4LJetCorrector_forbigobj+=UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins,src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins_parent := UFHZZAnalysisRun2/UFHZZ4LJetCorrector
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins,PLUGINS))
