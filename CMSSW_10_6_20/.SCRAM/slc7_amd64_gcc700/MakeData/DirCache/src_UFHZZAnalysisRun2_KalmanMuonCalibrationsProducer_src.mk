ifeq ($(strip $(UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer)),)
ALL_COMMONRULES += src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src_parent := UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src,LIBRARY))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer := self/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer := UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_files := $(patsubst src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/BuildFile
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_LOC_USE := self  FWCore/Framework FWCore/ServiceRegistry FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects RecoEgamma/EgammaTools RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/PatCandidates DataFormats/EgammaReco DataFormats/TrackReco TrackingTools/IPTools PhysicsTools/UtilAlgos PhysicsTools/SelectorUtils clhep root rootrflx rootcore roottmva
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_EX_LIB   := UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_EX_USE   := $(foreach d,$(UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_PACKAGE := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src
ALL_PRODS += UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_CLASS := LIBRARY
UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer_forbigobj+=UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2KalmanMuonCalibrationsProducer,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
