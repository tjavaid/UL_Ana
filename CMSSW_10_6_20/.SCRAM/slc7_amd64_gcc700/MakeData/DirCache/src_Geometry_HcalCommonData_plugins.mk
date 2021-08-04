ifeq ($(strip $(GeometryHcalCommonDataPlugins)),)
GeometryHcalCommonDataPlugins := self/src/Geometry/HcalCommonData/plugins
PLUGINS:=yes
GeometryHcalCommonDataPlugins_files := $(patsubst src/Geometry/HcalCommonData/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Geometry/HcalCommonData/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HcalCommonData/plugins/$(file). Please fix src/Geometry/HcalCommonData/plugins/BuildFile.))))
GeometryHcalCommonDataPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/plugins/BuildFile
GeometryHcalCommonDataPlugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet Geometry/Records Geometry/HcalCommonData CondFormats/GeometryObjects
GeometryHcalCommonDataPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeometryHcalCommonDataPlugins,GeometryHcalCommonDataPlugins,$(SCRAMSTORENAME_LIB),src/Geometry/HcalCommonData/plugins))
GeometryHcalCommonDataPlugins_PACKAGE := self/src/Geometry/HcalCommonData/plugins
ALL_PRODS += GeometryHcalCommonDataPlugins
Geometry/HcalCommonData_forbigobj+=GeometryHcalCommonDataPlugins
GeometryHcalCommonDataPlugins_INIT_FUNC        += $$(eval $$(call Library,GeometryHcalCommonDataPlugins,src/Geometry/HcalCommonData/plugins,src_Geometry_HcalCommonData_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeometryHcalCommonDataPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeometryHcalCommonDataPlugins,src/Geometry/HcalCommonData/plugins))
endif
ALL_COMMONRULES += src_Geometry_HcalCommonData_plugins
src_Geometry_HcalCommonData_plugins_parent := Geometry/HcalCommonData
src_Geometry_HcalCommonData_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HcalCommonData_plugins,src/Geometry/HcalCommonData/plugins,PLUGINS))
