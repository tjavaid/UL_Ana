ifeq ($(strip $(KinZfitter/HelperFunction)),)
ALL_COMMONRULES += src_KinZfitter_HelperFunction_src
src_KinZfitter_HelperFunction_src_parent := KinZfitter/HelperFunction
src_KinZfitter_HelperFunction_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_KinZfitter_HelperFunction_src,src/KinZfitter/HelperFunction/src,LIBRARY))
KinZfitterHelperFunction := self/KinZfitter/HelperFunction
KinZfitter/HelperFunction := KinZfitterHelperFunction
KinZfitterHelperFunction_files := $(patsubst src/KinZfitter/HelperFunction/src/%,%,$(wildcard $(foreach dir,src/KinZfitter/HelperFunction/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
KinZfitterHelperFunction_BuildFile    := $(WORKINGDIR)/cache/bf/src/KinZfitter/HelperFunction/BuildFile
KinZfitterHelperFunction_LOC_USE := self  DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate DataFormats/Provenance DataFormats/VertexReco DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/EgammaReco DataFormats/HLTReco DataFormats/CaloTowers FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities SimDataFormats/PileupSummaryInfo EgammaAnalysis/ElectronTools RecoParticleFlow/PFClusterTools DataFormats/METReco TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos SimTracker/Records SimTracker/TrackAssociation DataFormats/EcalRecHit Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils MagneticField/Records root rootmath roofit roostats histfactory
KinZfitterHelperFunction_EX_LIB   := KinZfitterHelperFunction
KinZfitterHelperFunction_EX_USE   := $(foreach d,$(KinZfitterHelperFunction_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
KinZfitterHelperFunction_PACKAGE := self/src/KinZfitter/HelperFunction/src
ALL_PRODS += KinZfitterHelperFunction
KinZfitterHelperFunction_CLASS := LIBRARY
KinZfitter/HelperFunction_forbigobj+=KinZfitterHelperFunction
KinZfitterHelperFunction_INIT_FUNC        += $$(eval $$(call Library,KinZfitterHelperFunction,src/KinZfitter/HelperFunction/src,src_KinZfitter_HelperFunction_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
