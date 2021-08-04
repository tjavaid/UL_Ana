ifeq ($(strip $(CondCoreESSourcesPlugins)),)
CondCoreESSourcesPlugins := self/src/CondCore/ESSources/plugins
PLUGINS:=yes
CondCoreESSourcesPlugins_files := $(patsubst src/CondCore/ESSources/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/plugins/$(file). Please fix src/CondCore/ESSources/plugins/BuildFile.))))
CondCoreESSourcesPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/plugins/BuildFile
CondCoreESSourcesPlugins_LOC_USE := self  FWCore/Framework CondCore/ESSources
CondCoreESSourcesPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CondCoreESSourcesPlugins,CondCoreESSourcesPlugins,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/plugins))
CondCoreESSourcesPlugins_PACKAGE := self/src/CondCore/ESSources/plugins
ALL_PRODS += CondCoreESSourcesPlugins
CondCore/ESSources_forbigobj+=CondCoreESSourcesPlugins
CondCoreESSourcesPlugins_INIT_FUNC        += $$(eval $$(call Library,CondCoreESSourcesPlugins,src/CondCore/ESSources/plugins,src_CondCore_ESSources_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
CondCoreESSourcesPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,CondCoreESSourcesPlugins,src/CondCore/ESSources/plugins))
endif
ALL_COMMONRULES += src_CondCore_ESSources_plugins
src_CondCore_ESSources_plugins_parent := CondCore/ESSources
src_CondCore_ESSources_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondCore_ESSources_plugins,src/CondCore/ESSources/plugins,PLUGINS))
