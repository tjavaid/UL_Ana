ifeq ($(strip $(RecoEgammaElectronIdentificationPlugins_cuts)),)
RecoEgammaElectronIdentificationPlugins_cuts := self/src/RecoEgamma/ElectronIdentification/plugins
PLUGINS:=yes
RecoEgammaElectronIdentificationPlugins_cuts_files := $(patsubst src/RecoEgamma/ElectronIdentification/plugins/%,%,$(foreach file,cuts/*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/ElectronIdentification/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/ElectronIdentification/plugins/$(file). Please fix src/RecoEgamma/ElectronIdentification/plugins/BuildFile.))))
RecoEgammaElectronIdentificationPlugins_cuts_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/plugins/BuildFile
RecoEgammaElectronIdentificationPlugins_cuts_LOC_USE := self  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates DataFormats/EcalRecHit root rootcore RecoEgamma/EgammaTools RecoEgamma/ElectronIdentification
RecoEgammaElectronIdentificationPlugins_cuts_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaElectronIdentificationPlugins_cuts,RecoEgammaElectronIdentificationPlugins_cuts,$(SCRAMSTORENAME_LIB),src/RecoEgamma/ElectronIdentification/plugins))
RecoEgammaElectronIdentificationPlugins_cuts_PACKAGE := self/src/RecoEgamma/ElectronIdentification/plugins
ALL_PRODS += RecoEgammaElectronIdentificationPlugins_cuts
RecoEgamma/ElectronIdentification_forbigobj+=RecoEgammaElectronIdentificationPlugins_cuts
RecoEgammaElectronIdentificationPlugins_cuts_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaElectronIdentificationPlugins_cuts,src/RecoEgamma/ElectronIdentification/plugins,src_RecoEgamma_ElectronIdentification_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaElectronIdentificationPlugins_cuts_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaElectronIdentificationPlugins_cuts,src/RecoEgamma/ElectronIdentification/plugins))
endif
ifeq ($(strip $(RecoEgammaElectronIdentificationPlugins)),)
RecoEgammaElectronIdentificationPlugins := self/src/RecoEgamma/ElectronIdentification/plugins
PLUGINS:=yes
RecoEgammaElectronIdentificationPlugins_files := $(patsubst src/RecoEgamma/ElectronIdentification/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/ElectronIdentification/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/ElectronIdentification/plugins/$(file). Please fix src/RecoEgamma/ElectronIdentification/plugins/BuildFile.))))
RecoEgammaElectronIdentificationPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/plugins/BuildFile
RecoEgammaElectronIdentificationPlugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates DataFormats/EcalRecHit root rootcore RecoEgamma/EgammaTools RecoEgamma/ElectronIdentification
RecoEgammaElectronIdentificationPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaElectronIdentificationPlugins,RecoEgammaElectronIdentificationPlugins,$(SCRAMSTORENAME_LIB),src/RecoEgamma/ElectronIdentification/plugins))
RecoEgammaElectronIdentificationPlugins_PACKAGE := self/src/RecoEgamma/ElectronIdentification/plugins
ALL_PRODS += RecoEgammaElectronIdentificationPlugins
RecoEgamma/ElectronIdentification_forbigobj+=RecoEgammaElectronIdentificationPlugins
RecoEgammaElectronIdentificationPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaElectronIdentificationPlugins,src/RecoEgamma/ElectronIdentification/plugins,src_RecoEgamma_ElectronIdentification_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaElectronIdentificationPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaElectronIdentificationPlugins,src/RecoEgamma/ElectronIdentification/plugins))
endif
ALL_COMMONRULES += src_RecoEgamma_ElectronIdentification_plugins
src_RecoEgamma_ElectronIdentification_plugins_parent := RecoEgamma/ElectronIdentification
src_RecoEgamma_ElectronIdentification_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_ElectronIdentification_plugins,src/RecoEgamma/ElectronIdentification/plugins,PLUGINS))
