ifeq ($(strip $(GeometryHGCalGeometryPlugins)),)
GeometryHGCalGeometryPlugins := self/src/Geometry/HGCalGeometry/plugins
PLUGINS:=yes
GeometryHGCalGeometryPlugins_files := $(patsubst src/Geometry/HGCalGeometry/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Geometry/HGCalGeometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HGCalGeometry/plugins/$(file). Please fix src/Geometry/HGCalGeometry/plugins/BuildFile.))))
GeometryHGCalGeometryPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HGCalGeometry/plugins/BuildFile
GeometryHGCalGeometryPlugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet Geometry/HGCalGeometry Geometry/CaloTopology Geometry/Records CondFormats/GeometryObjects
GeometryHGCalGeometryPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeometryHGCalGeometryPlugins,GeometryHGCalGeometryPlugins,$(SCRAMSTORENAME_LIB),src/Geometry/HGCalGeometry/plugins))
GeometryHGCalGeometryPlugins_PACKAGE := self/src/Geometry/HGCalGeometry/plugins
ALL_PRODS += GeometryHGCalGeometryPlugins
Geometry/HGCalGeometry_forbigobj+=GeometryHGCalGeometryPlugins
GeometryHGCalGeometryPlugins_INIT_FUNC        += $$(eval $$(call Library,GeometryHGCalGeometryPlugins,src/Geometry/HGCalGeometry/plugins,src_Geometry_HGCalGeometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeometryHGCalGeometryPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeometryHGCalGeometryPlugins,src/Geometry/HGCalGeometry/plugins))
endif
ALL_COMMONRULES += src_Geometry_HGCalGeometry_plugins
src_Geometry_HGCalGeometry_plugins_parent := Geometry/HGCalGeometry
src_Geometry_HGCalGeometry_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HGCalGeometry_plugins,src/Geometry/HGCalGeometry/plugins,PLUGINS))
