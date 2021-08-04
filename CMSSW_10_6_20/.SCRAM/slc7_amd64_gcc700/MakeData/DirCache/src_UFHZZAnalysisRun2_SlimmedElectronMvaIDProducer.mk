ifeq ($(strip $(UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer)),)
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer := self/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer
UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer  := src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/BuildFile
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_LOC_USE := clhep RecoEcal/EgammaCoreTools CondFormats/PhysicsToolsObjects FWCore/Framework self DataFormats/EgammaReco RecoEgamma/EgammaTools CondCore/DBOutputService rootrflx root Geometry/CaloTopology DataFormats/PatCandidates DataFormats/EgammaCandidates roottmva FWCore/MessageLogger DataFormats/Common CondFormats/EgammaObjects rootcore PhysicsTools/SelectorUtils TrackingTools/IPTools DataFormats/Candidate DataFormats/TrackReco FWCore/ServiceRegistry PhysicsTools/UtilAlgos FWCore/ParameterSet FWCore/Utilities
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_EX_USE   := $(foreach d,$(src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_INIT_FUNC += $$(eval $$(call EmptyPackage,src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer))
endif

