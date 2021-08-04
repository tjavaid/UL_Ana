ifeq ($(strip $(RecoEgammaPhotonIdentificationPlugins_cuts)),)
RecoEgammaPhotonIdentificationPlugins_cuts := self/src/RecoEgamma/PhotonIdentification/plugins
PLUGINS:=yes
RecoEgammaPhotonIdentificationPlugins_cuts_files := $(patsubst src/RecoEgamma/PhotonIdentification/plugins/%,%,$(foreach file,cuts/*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/PhotonIdentification/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/PhotonIdentification/plugins/$(file). Please fix src/RecoEgamma/PhotonIdentification/plugins/BuildFile.))))
RecoEgammaPhotonIdentificationPlugins_cuts_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/PhotonIdentification/plugins/BuildFile
RecoEgammaPhotonIdentificationPlugins_cuts_LOC_USE := self  FWCore/Framework FWCore/PluginManager DataFormats/EgammaReco DataFormats/EgammaCandidates DataFormats/PatCandidates CondFormats/PhysicsToolsObjects Geometry/CaloGeometry PhysicsTools/SelectorUtils CommonTools/UtilAlgos CommonTools/MVAUtils CondFormats/DataRecord RecoEgamma/EgammaTools
RecoEgammaPhotonIdentificationPlugins_cuts_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaPhotonIdentificationPlugins_cuts,RecoEgammaPhotonIdentificationPlugins_cuts,$(SCRAMSTORENAME_LIB),src/RecoEgamma/PhotonIdentification/plugins))
RecoEgammaPhotonIdentificationPlugins_cuts_PACKAGE := self/src/RecoEgamma/PhotonIdentification/plugins
ALL_PRODS += RecoEgammaPhotonIdentificationPlugins_cuts
RecoEgamma/PhotonIdentification_forbigobj+=RecoEgammaPhotonIdentificationPlugins_cuts
RecoEgammaPhotonIdentificationPlugins_cuts_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaPhotonIdentificationPlugins_cuts,src/RecoEgamma/PhotonIdentification/plugins,src_RecoEgamma_PhotonIdentification_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaPhotonIdentificationPlugins_cuts_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaPhotonIdentificationPlugins_cuts,src/RecoEgamma/PhotonIdentification/plugins))
endif
ifeq ($(strip $(RecoEgammaPhotonIdentificationPlugins)),)
RecoEgammaPhotonIdentificationPlugins := self/src/RecoEgamma/PhotonIdentification/plugins
PLUGINS:=yes
RecoEgammaPhotonIdentificationPlugins_files := $(patsubst src/RecoEgamma/PhotonIdentification/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/PhotonIdentification/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/PhotonIdentification/plugins/$(file). Please fix src/RecoEgamma/PhotonIdentification/plugins/BuildFile.))))
RecoEgammaPhotonIdentificationPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/PhotonIdentification/plugins/BuildFile
RecoEgammaPhotonIdentificationPlugins_LOC_USE := self  FWCore/Framework FWCore/PluginManager DataFormats/EgammaReco DataFormats/EgammaCandidates DataFormats/PatCandidates CondFormats/PhysicsToolsObjects Geometry/CaloGeometry PhysicsTools/SelectorUtils CommonTools/UtilAlgos CommonTools/MVAUtils CondFormats/DataRecord RecoEgamma/PhotonIdentification RecoEgamma/EgammaTools
RecoEgammaPhotonIdentificationPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaPhotonIdentificationPlugins,RecoEgammaPhotonIdentificationPlugins,$(SCRAMSTORENAME_LIB),src/RecoEgamma/PhotonIdentification/plugins))
RecoEgammaPhotonIdentificationPlugins_PACKAGE := self/src/RecoEgamma/PhotonIdentification/plugins
ALL_PRODS += RecoEgammaPhotonIdentificationPlugins
RecoEgamma/PhotonIdentification_forbigobj+=RecoEgammaPhotonIdentificationPlugins
RecoEgammaPhotonIdentificationPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaPhotonIdentificationPlugins,src/RecoEgamma/PhotonIdentification/plugins,src_RecoEgamma_PhotonIdentification_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaPhotonIdentificationPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaPhotonIdentificationPlugins,src/RecoEgamma/PhotonIdentification/plugins))
endif
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_plugins
src_RecoEgamma_PhotonIdentification_plugins_parent := RecoEgamma/PhotonIdentification
src_RecoEgamma_PhotonIdentification_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_plugins,src/RecoEgamma/PhotonIdentification/plugins,PLUGINS))
