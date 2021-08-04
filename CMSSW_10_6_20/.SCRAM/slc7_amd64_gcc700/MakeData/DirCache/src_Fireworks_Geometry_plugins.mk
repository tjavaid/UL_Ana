ifeq ($(strip $(FireworksGeometryMFProducerPlugin)),)
FireworksGeometryMFProducerPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryMFProducerPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,MFProducer.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryMFProducerPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryMFProducerPlugin_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet clhep MagneticField/Engine MagneticField/Records rootgpad
FireworksGeometryMFProducerPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryMFProducerPlugin,FireworksGeometryMFProducerPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryMFProducerPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryMFProducerPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryMFProducerPlugin
FireworksGeometryMFProducerPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryMFProducerPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryMFProducerPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryMFProducerPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryFWRecoGeometryESProducerPlugin)),)
FireworksGeometryFWRecoGeometryESProducerPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryFWRecoGeometryESProducerPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,FWRecoGeometryESProducerPlugin.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryFWRecoGeometryESProducerPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryFWRecoGeometryESProducerPlugin_LOC_USE := self  Fireworks/Geometry
FireworksGeometryFWRecoGeometryESProducerPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryFWRecoGeometryESProducerPlugin,FireworksGeometryFWRecoGeometryESProducerPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryFWRecoGeometryESProducerPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryFWRecoGeometryESProducerPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryFWRecoGeometryESProducerPlugin
FireworksGeometryFWRecoGeometryESProducerPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryFWRecoGeometryESProducerPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryFWRecoGeometryESProducerPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryFWRecoGeometryESProducerPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryDumpSimGeometryPlugin)),)
FireworksGeometryDumpSimGeometryPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryDumpSimGeometryPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,DumpSimGeometry.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryDumpSimGeometryPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryDumpSimGeometryPlugin_LOC_LIB   := Geom
FireworksGeometryDumpSimGeometryPlugin_LOC_USE := self  Fireworks/Geometry FWCore/Framework FWCore/PluginManager FWCore/ParameterSet
FireworksGeometryDumpSimGeometryPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryDumpSimGeometryPlugin,FireworksGeometryDumpSimGeometryPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryDumpSimGeometryPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryDumpSimGeometryPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryDumpSimGeometryPlugin
FireworksGeometryDumpSimGeometryPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryDumpSimGeometryPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryDumpSimGeometryPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryDumpSimGeometryPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryDumpFWRecoGeometryPlugin)),)
FireworksGeometryDumpFWRecoGeometryPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryDumpFWRecoGeometryPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,DumpFWRecoGeometry.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryDumpFWRecoGeometryPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryDumpFWRecoGeometryPlugin_LOC_LIB   := Eve Geom
FireworksGeometryDumpFWRecoGeometryPlugin_LOC_USE := self  Fireworks/Geometry rootcore FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/CaloGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry Geometry/TrackerGeometryBuilder Geometry/Records
FireworksGeometryDumpFWRecoGeometryPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryDumpFWRecoGeometryPlugin,FireworksGeometryDumpFWRecoGeometryPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryDumpFWRecoGeometryPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryDumpFWRecoGeometryPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryDumpFWRecoGeometryPlugin
FireworksGeometryDumpFWRecoGeometryPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryDumpFWRecoGeometryPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryDumpFWRecoGeometryPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryDumpFWRecoGeometryPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryPlugins)),)
FireworksGeometryPlugins := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryPlugins_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,EveDisplayPlugin.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryPlugins_LOC_LIB   := Eve Geom
FireworksGeometryPlugins_LOC_USE := self  Geometry/Records Fireworks/Geometry rootgpad
FireworksGeometryPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryPlugins,FireworksGeometryPlugins,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryPlugins_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryPlugins
Fireworks/Geometry_forbigobj+=FireworksGeometryPlugins
FireworksGeometryPlugins_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryPlugins,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryPlugins,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryDumpFWTGeoRecoGeometryPlugin)),)
FireworksGeometryDumpFWTGeoRecoGeometryPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,DumpFWTGeoRecoGeometry.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_LOC_LIB   := Eve Geom
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_LOC_USE := self  Fireworks/Geometry rootcore FWCore/Framework FWCore/PluginManager FWCore/ParameterSet Geometry/CaloGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry Geometry/TrackerGeometryBuilder Geometry/Records
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryDumpFWTGeoRecoGeometryPlugin,FireworksGeometryDumpFWTGeoRecoGeometryPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryDumpFWTGeoRecoGeometryPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryDumpFWTGeoRecoGeometryPlugin
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryDumpFWTGeoRecoGeometryPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryDumpFWTGeoRecoGeometryPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryDumpFWTGeoRecoGeometryPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksDisplayGeomPlugin)),)
FireworksDisplayGeomPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksDisplayGeomPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,DisplayGeom.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksDisplayGeomPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksDisplayGeomPlugin_LOC_LIB   := Eve Geom Physics
FireworksDisplayGeomPlugin_LOC_USE := self  FWCore/Framework Fireworks/Geometry Fireworks/Eve MagneticField/Engine MagneticField/Records
FireworksDisplayGeomPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksDisplayGeomPlugin,FireworksDisplayGeomPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksDisplayGeomPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksDisplayGeomPlugin
Fireworks/Geometry_forbigobj+=FireworksDisplayGeomPlugin
FireworksDisplayGeomPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksDisplayGeomPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksDisplayGeomPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksDisplayGeomPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryValidateGeometryPlugin)),)
FireworksGeometryValidateGeometryPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryValidateGeometryPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,ValidateGeometry.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryValidateGeometryPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryValidateGeometryPlugin_LOC_LIB   := Geom
FireworksGeometryValidateGeometryPlugin_LOC_USE := self  FWCore/Framework Geometry/RPCGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/CaloGeometry Geometry/TrackerGeometryBuilder Geometry/Records Fireworks/Core Fireworks/Tracks rootcore
FireworksGeometryValidateGeometryPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryValidateGeometryPlugin,FireworksGeometryValidateGeometryPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryValidateGeometryPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryValidateGeometryPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryValidateGeometryPlugin
FireworksGeometryValidateGeometryPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryValidateGeometryPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryValidateGeometryPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryValidateGeometryPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryTGeoMgrFromDddPlugin)),)
FireworksGeometryTGeoMgrFromDddPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryTGeoMgrFromDddPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,TGeoMgrFromDddPlugin.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryTGeoMgrFromDddPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryTGeoMgrFromDddPlugin_LOC_USE := self  Fireworks/Geometry
FireworksGeometryTGeoMgrFromDddPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryTGeoMgrFromDddPlugin,FireworksGeometryTGeoMgrFromDddPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryTGeoMgrFromDddPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryTGeoMgrFromDddPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryTGeoMgrFromDddPlugin
FireworksGeometryTGeoMgrFromDddPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryTGeoMgrFromDddPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryTGeoMgrFromDddPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryTGeoMgrFromDddPlugin,src/Fireworks/Geometry/plugins))
endif
ifeq ($(strip $(FireworksGeometryFWTGeoRecoGeometryESProducerPlugin)),)
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin := self/src/Fireworks/Geometry/plugins
PLUGINS:=yes
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_files := $(patsubst src/Fireworks/Geometry/plugins/%,%,$(foreach file,FWTGeoRecoGeometryESProducerPlugin.cc,$(eval xfile:=$(wildcard src/Fireworks/Geometry/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Fireworks/Geometry/plugins/$(file). Please fix src/Fireworks/Geometry/plugins/BuildFile.))))
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/plugins/BuildFile
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_LOC_USE := self  Fireworks/Geometry
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,FireworksGeometryFWTGeoRecoGeometryESProducerPlugin,FireworksGeometryFWTGeoRecoGeometryESProducerPlugin,$(SCRAMSTORENAME_LIB),src/Fireworks/Geometry/plugins))
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_PACKAGE := self/src/Fireworks/Geometry/plugins
ALL_PRODS += FireworksGeometryFWTGeoRecoGeometryESProducerPlugin
Fireworks/Geometry_forbigobj+=FireworksGeometryFWTGeoRecoGeometryESProducerPlugin
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometryFWTGeoRecoGeometryESProducerPlugin,src/Fireworks/Geometry/plugins,src_Fireworks_Geometry_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
FireworksGeometryFWTGeoRecoGeometryESProducerPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,FireworksGeometryFWTGeoRecoGeometryESProducerPlugin,src/Fireworks/Geometry/plugins))
endif
ALL_COMMONRULES += src_Fireworks_Geometry_plugins
src_Fireworks_Geometry_plugins_parent := Fireworks/Geometry
src_Fireworks_Geometry_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Fireworks_Geometry_plugins,src/Fireworks/Geometry/plugins,PLUGINS))
