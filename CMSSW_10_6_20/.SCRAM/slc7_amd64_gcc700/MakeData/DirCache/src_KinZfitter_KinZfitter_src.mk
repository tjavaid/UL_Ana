ifeq ($(strip $(KinZfitter/KinZfitter)),)
ALL_COMMONRULES += src_KinZfitter_KinZfitter_src
src_KinZfitter_KinZfitter_src_parent := KinZfitter/KinZfitter
src_KinZfitter_KinZfitter_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_KinZfitter_KinZfitter_src,src/KinZfitter/KinZfitter/src,LIBRARY))
KinZfitterKinZfitter := self/KinZfitter/KinZfitter
KinZfitter/KinZfitter := KinZfitterKinZfitter
KinZfitterKinZfitter_files := $(patsubst src/KinZfitter/KinZfitter/src/%,%,$(wildcard $(foreach dir,src/KinZfitter/KinZfitter/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
KinZfitterKinZfitter_BuildFile    := $(WORKINGDIR)/cache/bf/src/KinZfitter/KinZfitter/BuildFile
KinZfitterKinZfitter_LOC_USE := self  DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate DataFormats/Provenance DataFormats/VertexReco DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/EgammaReco DataFormats/HLTReco DataFormats/CaloTowers FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities SimDataFormats/PileupSummaryInfo EgammaAnalysis/ElectronTools RecoParticleFlow/PFClusterTools DataFormats/METReco TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos SimTracker/Records SimTracker/TrackAssociation DataFormats/EcalRecHit Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils KinZfitter/HelperFunction root rootmath roofit roostats histfactory
KinZfitterKinZfitter_EX_LIB   := KinZfitterKinZfitter
KinZfitterKinZfitter_EX_USE   := $(foreach d,$(KinZfitterKinZfitter_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
KinZfitterKinZfitter_PACKAGE := self/src/KinZfitter/KinZfitter/src
ALL_PRODS += KinZfitterKinZfitter
KinZfitterKinZfitter_CLASS := LIBRARY
KinZfitter/KinZfitter_forbigobj+=KinZfitterKinZfitter
KinZfitterKinZfitter_INIT_FUNC        += $$(eval $$(call Library,KinZfitterKinZfitter,src/KinZfitter/KinZfitter/src,src_KinZfitter_KinZfitter_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
