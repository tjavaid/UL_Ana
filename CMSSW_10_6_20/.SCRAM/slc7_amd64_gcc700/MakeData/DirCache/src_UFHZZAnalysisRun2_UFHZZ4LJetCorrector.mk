ifeq ($(strip $(UFHZZAnalysisRun2/UFHZZ4LJetCorrector)),)
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector := self/UFHZZAnalysisRun2/UFHZZ4LJetCorrector
UFHZZAnalysisRun2/UFHZZ4LJetCorrector  := src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/BuildFile
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_LOC_USE := TrackingTools/TransientTrack FWCore/Framework self DataFormats/JetReco CondFormats/JetMETObjects DataFormats/METReco TrackingTools/Records Geometry/CaloTopology RecoVertex/GaussianSumVertexFit DataFormats/PatCandidates FWCore/PluginManager JetMETCorrections/Objects DataFormats/Common Geometry/Records TrackingTools/IPTools FWCore/ServiceRegistry PhysicsTools/IsolationAlgos PhysicsTools/UtilAlgos FWCore/ParameterSet
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_EX_USE   := $(foreach d,$(src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_INIT_FUNC += $$(eval $$(call EmptyPackage,src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector))
endif

