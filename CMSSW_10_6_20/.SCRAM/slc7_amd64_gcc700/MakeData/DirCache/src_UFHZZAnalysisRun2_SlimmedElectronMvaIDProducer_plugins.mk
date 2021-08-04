ifeq ($(strip $(UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto)),)
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto := self/src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins
PLUGINS:=yes
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto_files := $(patsubst src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins/BuildFile
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/PatCandidates DataFormats/Common DataFormats/VertexReco PhysicsTools/UtilAlgos FWCore/ServiceRegistry Geometry/CaloTopology Geometry/Records EgammaAnalysis/ElectronTools RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto,UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins))
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto_PACKAGE := self/src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins
ALL_PRODS += UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto
UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer_forbigobj+=UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins,src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UFHZZAnalysisRun2SlimmedElectronMvaIDProducerAuto,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_plugins
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_plugins_parent := UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_plugins,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/plugins,PLUGINS))
