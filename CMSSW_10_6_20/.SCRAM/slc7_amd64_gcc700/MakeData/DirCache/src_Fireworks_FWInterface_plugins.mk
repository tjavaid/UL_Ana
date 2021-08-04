ifeq ($(strip $(FireworksFWInterfacePlugin)),)
FireworksFWInterfacePlugin := self/src/Fireworks/FWInterface/plugins
PLUGINS:=yes
FireworksFWInterfacePlugin_files := $(patsubst src/Fireworks/FWInterface/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Fireworks/FWInterface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/FWInterface/plugins/$(file). Please fix src/Fireworks/FWInterface/plugins/BuildFile.))))
FireworksFWInterfacePlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/FWInterface/plugins/BuildFile
FireworksFWInterfacePlugin_LOC_LIB   := Geom Eve
FireworksFWInterfacePlugin_LOC_USE := self  FWCore/PluginManager FWCore/Framework Fireworks/FWInterface CondFormats/DataRecord CondFormats/RunInfo SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/CaloHit SimDataFormats/Vertex SimDataFormats/TrackingAnalysis SimGeneral/TrackingAnalysis rootcore
FireworksFWInterfacePlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksFWInterfacePlugin,FireworksFWInterfacePlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/FWInterface/plugins))
FireworksFWInterfacePlugin_PACKAGE := self/src/Fireworks/FWInterface/plugins
ALL_PRODS += FireworksFWInterfacePlugin
Fireworks/FWInterface_forbigobj+=FireworksFWInterfacePlugin
FireworksFWInterfacePlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksFWInterfacePlugin,src/Fireworks/FWInterface/plugins,src_Fireworks_FWInterface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksFWInterfacePlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksFWInterfacePlugin,src/Fireworks/FWInterface/plugins))
endif
ALL_COMMONRULES += src_Fireworks_FWInterface_plugins
src_Fireworks_FWInterface_plugins_parent := Fireworks/FWInterface
src_Fireworks_FWInterface_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Fireworks_FWInterface_plugins,src/Fireworks/FWInterface/plugins,PLUGINS))
