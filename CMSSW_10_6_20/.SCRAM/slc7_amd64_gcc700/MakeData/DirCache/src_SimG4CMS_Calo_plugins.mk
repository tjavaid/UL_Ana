ifeq ($(strip $(SimG4CMSCaloPlugins)),)
SimG4CMSCaloPlugins := self/src/SimG4CMS/Calo/plugins
PLUGINS:=yes
SimG4CMSCaloPlugins_files := $(patsubst src/SimG4CMS/Calo/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimG4CMS/Calo/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimG4CMS/Calo/plugins/$(file). Please fix src/SimG4CMS/Calo/plugins/BuildFile.))))
SimG4CMSCaloPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Calo/plugins/BuildFile
SimG4CMSCaloPlugins_LOC_USE := self  FWCore/PluginManager SimG4Core/Watcher SimG4CMS/Calo SimDataFormats/GeneratorProducts
SimG4CMSCaloPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimG4CMSCaloPlugins,SimG4CMSCaloPlugins,$(SCRAMSTORENAME_LIB),src/SimG4CMS/Calo/plugins))
SimG4CMSCaloPlugins_PACKAGE := self/src/SimG4CMS/Calo/plugins
ALL_PRODS += SimG4CMSCaloPlugins
SimG4CMS/Calo_forbigobj+=SimG4CMSCaloPlugins
SimG4CMSCaloPlugins_INIT_FUNC        += $$(eval $$(call Library,SimG4CMSCaloPlugins,src/SimG4CMS/Calo/plugins,src_SimG4CMS_Calo_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
SimG4CMSCaloPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,SimG4CMSCaloPlugins,src/SimG4CMS/Calo/plugins))
endif
ALL_COMMONRULES += src_SimG4CMS_Calo_plugins
src_SimG4CMS_Calo_plugins_parent := SimG4CMS/Calo
src_SimG4CMS_Calo_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Calo_plugins,src/SimG4CMS/Calo/plugins,PLUGINS))
