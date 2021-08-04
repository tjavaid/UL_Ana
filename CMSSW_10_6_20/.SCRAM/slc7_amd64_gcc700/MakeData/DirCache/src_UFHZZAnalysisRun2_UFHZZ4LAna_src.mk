ifeq ($(strip $(UFHZZAnalysisRun2/UFHZZ4LAna)),)
ALL_COMMONRULES += src_UFHZZAnalysisRun2_UFHZZ4LAna_src
src_UFHZZAnalysisRun2_UFHZZ4LAna_src_parent := UFHZZAnalysisRun2/UFHZZ4LAna
src_UFHZZAnalysisRun2_UFHZZ4LAna_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_UFHZZ4LAna_src,src/UFHZZAnalysisRun2/UFHZZ4LAna/src,LIBRARY))
UFHZZAnalysisRun2UFHZZ4LAna := self/UFHZZAnalysisRun2/UFHZZ4LAna
UFHZZAnalysisRun2/UFHZZ4LAna := UFHZZAnalysisRun2UFHZZ4LAna
UFHZZAnalysisRun2UFHZZ4LAna_files := $(patsubst src/UFHZZAnalysisRun2/UFHZZ4LAna/src/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/UFHZZ4LAna/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2UFHZZ4LAna_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/UFHZZ4LAna/BuildFile
UFHZZAnalysisRun2UFHZZ4LAna_LOC_FLAGS_CXXFLAGS   := -g
UFHZZAnalysisRun2UFHZZ4LAna_LOC_USE := self  DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate DataFormats/Provenance DataFormats/VertexReco DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/EgammaReco DataFormats/HLTReco DataFormats/CaloTowers FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Common PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities SimDataFormats/PileupSummaryInfo SimDataFormats/GeneratorProducts EgammaAnalysis/ElectronTools RecoEgamma/EgammaTools RecoParticleFlow/PFClusterTools DataFormats/METReco TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos SimTracker/Records SimTracker/TrackAssociation DataFormats/EcalRecHit Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils MagneticField/Records JHUGenMELA/MELA KinZfitter/KinZfitter CondFormats/JetMETObjects JetMETCorrections/Objects CondCore/PluginSystem CondFormats/DataRecord CondCore/DBCommon CondCore/DBOutputService JetMETCorrections/Algorithms JetMETCorrections/JetCorrector JetMETCorrections/Modules CondFormats/BTauObjects CondTools/BTau
UFHZZAnalysisRun2UFHZZ4LAna_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2UFHZZ4LAna,UFHZZAnalysisRun2UFHZZ4LAna,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/UFHZZ4LAna/src))
UFHZZAnalysisRun2UFHZZ4LAna_PACKAGE := self/src/UFHZZAnalysisRun2/UFHZZ4LAna/src
ALL_PRODS += UFHZZAnalysisRun2UFHZZ4LAna
UFHZZAnalysisRun2UFHZZ4LAna_CLASS := LIBRARY
UFHZZAnalysisRun2/UFHZZ4LAna_forbigobj+=UFHZZAnalysisRun2UFHZZ4LAna
UFHZZAnalysisRun2UFHZZ4LAna_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2UFHZZ4LAna,src/UFHZZAnalysisRun2/UFHZZ4LAna/src,src_UFHZZAnalysisRun2_UFHZZ4LAna_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
