ifeq ($(strip $(UFHZZAnalysisRun2/FSRPhotons)),)
src_UFHZZAnalysisRun2_FSRPhotons := self/UFHZZAnalysisRun2/FSRPhotons
UFHZZAnalysisRun2/FSRPhotons  := src_UFHZZAnalysisRun2_FSRPhotons
src_UFHZZAnalysisRun2_FSRPhotons_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/FSRPhotons/BuildFile
src_UFHZZAnalysisRun2_FSRPhotons_LOC_USE := TrackingTools/TransientTrack RecoVertex/PrimaryVertexProducer FWCore/Framework self DataFormats/VertexReco RecoEgamma/EgammaTools DataFormats/BeamSpot DataFormats/METReco TrackingTools/Records DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/EgammaCandidates FWCore/PluginManager MagneticField/Records DataFormats/Common RecoMET/METAlgorithms DataFormats/Candidate DataFormats/TrackReco FWCore/ParameterSet MagneticField/Engine
src_UFHZZAnalysisRun2_FSRPhotons_EX_USE   := $(foreach d,$(src_UFHZZAnalysisRun2_FSRPhotons_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_UFHZZAnalysisRun2_FSRPhotons
src_UFHZZAnalysisRun2_FSRPhotons_INIT_FUNC += $$(eval $$(call EmptyPackage,src_UFHZZAnalysisRun2_FSRPhotons,src/UFHZZAnalysisRun2/FSRPhotons))
endif

