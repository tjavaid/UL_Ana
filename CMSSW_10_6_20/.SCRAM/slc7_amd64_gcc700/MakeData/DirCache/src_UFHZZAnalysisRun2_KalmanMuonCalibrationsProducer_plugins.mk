ifeq ($(strip $(UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto)),)
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins
PLUGINS:=yes
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto_files := $(patsubst src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins/BuildFile
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/PatCandidates DataFormats/Common DataFormats/VertexReco PhysicsTools/UtilAlgos FWCore/ServiceRegistry Geometry/CaloTopology Geometry/Records KaMuCa/Calibration
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto,UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto_PACKAGE := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins
ALL_PRODS += UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto
UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer_forbigobj+=UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UFHZZAnalysisRun2KalmanMuonCalibrationsProducerAuto,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_plugins
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_plugins_parent := UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_plugins,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/plugins,PLUGINS))
