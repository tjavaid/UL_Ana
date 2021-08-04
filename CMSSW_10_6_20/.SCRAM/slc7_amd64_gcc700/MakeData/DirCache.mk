ifeq ($(strip $(AlignmentMillePedeAlignmentAlgorithmAuto)),)
AlignmentMillePedeAlignmentAlgorithmAuto := self/src/Alignment/MillePedeAlignmentAlgorithm/plugins
PLUGINS:=yes
AlignmentMillePedeAlignmentAlgorithmAuto_files := $(patsubst src/Alignment/MillePedeAlignmentAlgorithm/plugins/%,%,$(wildcard $(foreach dir,src/Alignment/MillePedeAlignmentAlgorithm/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AlignmentMillePedeAlignmentAlgorithmAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/MillePedeAlignmentAlgorithm/plugins/BuildFile
AlignmentMillePedeAlignmentAlgorithmAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry CommonTools/UtilAlgos CondFormats/Common CondFormats/GeometryObjects DataFormats/HepMCCandidate DataFormats/TrackerCommon Geometry/TrackerGeometryBuilder DQMServices/Core Alignment/MillePedeAlignmentAlgorithm classlib
AlignmentMillePedeAlignmentAlgorithmAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AlignmentMillePedeAlignmentAlgorithmAuto,AlignmentMillePedeAlignmentAlgorithmAuto,$(SCRAMSTORENAME_LIB),src/Alignment/MillePedeAlignmentAlgorithm/plugins))
AlignmentMillePedeAlignmentAlgorithmAuto_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/plugins
ALL_PRODS += AlignmentMillePedeAlignmentAlgorithmAuto
Alignment/MillePedeAlignmentAlgorithm_forbigobj+=AlignmentMillePedeAlignmentAlgorithmAuto
AlignmentMillePedeAlignmentAlgorithmAuto_INIT_FUNC        += $$(eval $$(call Library,AlignmentMillePedeAlignmentAlgorithmAuto,src/Alignment/MillePedeAlignmentAlgorithm/plugins,src_Alignment_MillePedeAlignmentAlgorithm_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
AlignmentMillePedeAlignmentAlgorithmAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,AlignmentMillePedeAlignmentAlgorithmAuto,src/Alignment/MillePedeAlignmentAlgorithm/plugins))
endif
ALL_COMMONRULES += src_Alignment_MillePedeAlignmentAlgorithm_plugins
src_Alignment_MillePedeAlignmentAlgorithm_plugins_parent := Alignment/MillePedeAlignmentAlgorithm
src_Alignment_MillePedeAlignmentAlgorithm_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_MillePedeAlignmentAlgorithm_plugins,src/Alignment/MillePedeAlignmentAlgorithm/plugins,PLUGINS))
ifeq ($(strip $(Alignment/MillePedeAlignmentAlgorithm)),)
ALL_COMMONRULES += src_Alignment_MillePedeAlignmentAlgorithm_src
src_Alignment_MillePedeAlignmentAlgorithm_src_parent := Alignment/MillePedeAlignmentAlgorithm
src_Alignment_MillePedeAlignmentAlgorithm_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Alignment_MillePedeAlignmentAlgorithm_src,src/Alignment/MillePedeAlignmentAlgorithm/src,LIBRARY))
AlignmentMillePedeAlignmentAlgorithm := self/Alignment/MillePedeAlignmentAlgorithm
Alignment/MillePedeAlignmentAlgorithm := AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_files := $(patsubst src/Alignment/MillePedeAlignmentAlgorithm/src/%,%,$(wildcard $(foreach dir,src/Alignment/MillePedeAlignmentAlgorithm/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AlignmentMillePedeAlignmentAlgorithm_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/MillePedeAlignmentAlgorithm/BuildFile
AlignmentMillePedeAlignmentAlgorithm_LOC_USE := self  Alignment/CommonAlignment Alignment/CommonAlignmentAlgorithm Alignment/CommonAlignmentParametrization Alignment/MuonAlignment Alignment/SurveyAnalysis Alignment/ReferenceTrajectories CondFormats/PCLConfig DataFormats/CLHEP DataFormats/SiStripDetId DataFormats/GeometryVector DataFormats/TrackReco FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit rootcore
AlignmentMillePedeAlignmentAlgorithm_EX_LIB   := AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_EX_USE   := $(foreach d,$(AlignmentMillePedeAlignmentAlgorithm_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentMillePedeAlignmentAlgorithm_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/src
ALL_PRODS += AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_CLASS := LIBRARY
Alignment/MillePedeAlignmentAlgorithm_forbigobj+=AlignmentMillePedeAlignmentAlgorithm
AlignmentMillePedeAlignmentAlgorithm_INIT_FUNC        += $$(eval $$(call Library,AlignmentMillePedeAlignmentAlgorithm,src/Alignment/MillePedeAlignmentAlgorithm/src,src_Alignment_MillePedeAlignmentAlgorithm_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(CommonToolsPileupAlgos_plugins)),)
CommonToolsPileupAlgos_plugins := self/src/CommonTools/PileupAlgos/plugins
PLUGINS:=yes
CommonToolsPileupAlgos_plugins_files := $(patsubst src/CommonTools/PileupAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/PileupAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/PileupAlgos/plugins/$(file). Please fix src/CommonTools/PileupAlgos/plugins/BuildFile.))))
CommonToolsPileupAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/PileupAlgos/plugins/BuildFile
CommonToolsPileupAlgos_plugins_LOC_USE := self  DataFormats/ParticleFlowCandidate DataFormats/JetReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects CommonTools/Utils CommonTools/ParticleFlow CommonTools/PileupAlgos fastjet fastjet-contrib
CommonToolsPileupAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsPileupAlgos_plugins,CommonToolsPileupAlgos_plugins,$(SCRAMSTORENAME_LIB),src/CommonTools/PileupAlgos/plugins))
CommonToolsPileupAlgos_plugins_PACKAGE := self/src/CommonTools/PileupAlgos/plugins
ALL_PRODS += CommonToolsPileupAlgos_plugins
CommonTools/PileupAlgos_forbigobj+=CommonToolsPileupAlgos_plugins
CommonToolsPileupAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,CommonToolsPileupAlgos_plugins,src/CommonTools/PileupAlgos/plugins,src_CommonTools_PileupAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
CommonToolsPileupAlgos_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,CommonToolsPileupAlgos_plugins,src/CommonTools/PileupAlgos/plugins))
endif
ALL_COMMONRULES += src_CommonTools_PileupAlgos_plugins
src_CommonTools_PileupAlgos_plugins_parent := CommonTools/PileupAlgos
src_CommonTools_PileupAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_PileupAlgos_plugins,src/CommonTools/PileupAlgos/plugins,PLUGINS))
ifeq ($(strip $(CommonTools/PileupAlgos)),)
ALL_COMMONRULES += src_CommonTools_PileupAlgos_src
src_CommonTools_PileupAlgos_src_parent := CommonTools/PileupAlgos
src_CommonTools_PileupAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_PileupAlgos_src,src/CommonTools/PileupAlgos/src,LIBRARY))
CommonToolsPileupAlgos := self/CommonTools/PileupAlgos
CommonTools/PileupAlgos := CommonToolsPileupAlgos
CommonToolsPileupAlgos_files := $(patsubst src/CommonTools/PileupAlgos/src/%,%,$(wildcard $(foreach dir,src/CommonTools/PileupAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsPileupAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/PileupAlgos/BuildFile
CommonToolsPileupAlgos_LOC_USE := self  DataFormats/Common DataFormats/ParticleFlowCandidate FWCore/ParameterSet root rootcore fastjet
CommonToolsPileupAlgos_EX_LIB   := CommonToolsPileupAlgos
CommonToolsPileupAlgos_EX_USE   := $(foreach d,$(CommonToolsPileupAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsPileupAlgos_PACKAGE := self/src/CommonTools/PileupAlgos/src
ALL_PRODS += CommonToolsPileupAlgos
CommonToolsPileupAlgos_CLASS := LIBRARY
CommonTools/PileupAlgos_forbigobj+=CommonToolsPileupAlgos
CommonToolsPileupAlgos_INIT_FUNC        += $$(eval $$(call Library,CommonToolsPileupAlgos,src/CommonTools/PileupAlgos/src,src_CommonTools_PileupAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(CondCore/ESSources)),)
ALL_COMMONRULES += src_CondCore_ESSources_src
src_CondCore_ESSources_src_parent := CondCore/ESSources
src_CondCore_ESSources_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondCore_ESSources_src,src/CondCore/ESSources/src,LIBRARY))
CondCoreESSources := self/CondCore/ESSources
CondCore/ESSources := CondCoreESSources
CondCoreESSources_files := $(patsubst src/CondCore/ESSources/src/%,%,$(wildcard $(foreach dir,src/CondCore/ESSources/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondCoreESSources_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/BuildFile
CondCoreESSources_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CondCore/CondDB
CondCoreESSources_EX_LIB   := CondCoreESSources
CondCoreESSources_EX_USE   := $(foreach d,$(CondCoreESSources_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreESSources_PACKAGE := self/src/CondCore/ESSources/src
ALL_PRODS += CondCoreESSources
CondCoreESSources_CLASS := LIBRARY
CondCore/ESSources_forbigobj+=CondCoreESSources
CondCoreESSources_INIT_FUNC        += $$(eval $$(call Library,CondCoreESSources,src/CondCore/ESSources/src,src_CondCore_ESSources_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(DQM/CastorMonitor)),)
ALL_COMMONRULES += src_DQM_CastorMonitor_src
src_DQM_CastorMonitor_src_parent := DQM/CastorMonitor
src_DQM_CastorMonitor_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DQM_CastorMonitor_src,src/DQM/CastorMonitor/src,LIBRARY))
DQMCastorMonitor := self/DQM/CastorMonitor
DQM/CastorMonitor := DQMCastorMonitor
DQMCastorMonitor_files := $(patsubst src/DQM/CastorMonitor/src/%,%,$(wildcard $(foreach dir,src/DQM/CastorMonitor/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DQMCastorMonitor_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/CastorMonitor/BuildFile
DQMCastorMonitor_LOC_USE := self  DataFormats/HcalDetId DataFormats/HcalRecHit DataFormats/HcalDigi CondFormats/CastorObjects CalibFormats/CastorObjects DataFormats/JetReco EventFilter/CastorRawToDigi Geometry/CaloGeometry FWCore/ParameterSet FWCore/Framework FWCore/MessageLogger DQMServices/Core DQMServices/Components DataFormats/FEDRawData rootmath
DQMCastorMonitor_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DQMCastorMonitor,DQMCastorMonitor,$(SCRAMSTORENAME_LIB),src/DQM/CastorMonitor/src))
DQMCastorMonitor_PACKAGE := self/src/DQM/CastorMonitor/src
ALL_PRODS += DQMCastorMonitor
DQMCastorMonitor_CLASS := LIBRARY
DQM/CastorMonitor_forbigobj+=DQMCastorMonitor
DQMCastorMonitor_INIT_FUNC        += $$(eval $$(call Library,DQMCastorMonitor,src/DQM/CastorMonitor/src,src_DQM_CastorMonitor_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
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
ifeq ($(strip $(Fireworks/FWInterface)),)
ALL_COMMONRULES += src_Fireworks_FWInterface_src
src_Fireworks_FWInterface_src_parent := Fireworks/FWInterface
src_Fireworks_FWInterface_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Fireworks_FWInterface_src,src/Fireworks/FWInterface/src,LIBRARY))
FireworksFWInterface := self/Fireworks/FWInterface
Fireworks/FWInterface := FireworksFWInterface
FireworksFWInterface_files := $(patsubst src/Fireworks/FWInterface/src/%,%,$(wildcard $(foreach dir,src/Fireworks/FWInterface/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
FireworksFWInterface_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/FWInterface/BuildFile
FireworksFWInterface_LOC_LIB   := Geom Eve RGL GuiHtml GX11
FireworksFWInterface_LOC_USE := self  FWCore/PluginManager FWCore/Framework DataFormats/Provenance DataFormats/TrackReco TrackingTools/TrajectoryState TrackingTools/PatternTools CondFormats/DataRecord CondFormats/RunInfo Fireworks/Core Fireworks/Geometry rootcore rootinteractive boost_python FWCore/PythonParameterSet
FireworksFWInterface_LCGDICTS  := x 
FireworksFWInterface_PRE_INIT_FUNC += $$(eval $$(call LCGDict,FireworksFWInterface,src/Fireworks/FWInterface/src/classes.h,src/Fireworks/FWInterface/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
FireworksFWInterface_EX_LIB   := FireworksFWInterface
FireworksFWInterface_EX_USE   := $(foreach d,$(FireworksFWInterface_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksFWInterface_PACKAGE := self/src/Fireworks/FWInterface/src
ALL_PRODS += FireworksFWInterface
FireworksFWInterface_CLASS := LIBRARY
Fireworks/FWInterface_forbigobj+=FireworksFWInterface
FireworksFWInterface_INIT_FUNC        += $$(eval $$(call Library,FireworksFWInterface,src/Fireworks/FWInterface/src,src_Fireworks_FWInterface_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(Fireworks/Geometry)),)
ALL_COMMONRULES += src_Fireworks_Geometry_src
src_Fireworks_Geometry_src_parent := Fireworks/Geometry
src_Fireworks_Geometry_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Fireworks_Geometry_src,src/Fireworks/Geometry/src,LIBRARY))
FireworksGeometry := self/Fireworks/Geometry
Fireworks/Geometry := FireworksGeometry
FireworksGeometry_files := $(patsubst src/Fireworks/Geometry/src/%,%,$(wildcard $(foreach dir,src/Fireworks/Geometry/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
FireworksGeometry_BuildFile    := $(WORKINGDIR)/cache/bf/src/Fireworks/Geometry/BuildFile
FireworksGeometry_LOC_LIB   := Geom Eve Physics
FireworksGeometry_LOC_USE := self  FWCore/PluginManager FWCore/Framework FWCore/MessageLogger Geometry/CommonDetUnit Geometry/MuonNumbering Geometry/EcalCommonData Geometry/CSCGeometryBuilder DetectorDescription/Core Geometry/CaloGeometry Geometry/HGCalGeometry Geometry/DTGeometry Geometry/CSCGeometry Geometry/RPCGeometry Geometry/GEMGeometry Geometry/TrackerGeometryBuilder Geometry/Records DataFormats/GeometrySurface DataFormats/MuonDetId DataFormats/SiStripDetId DataFormats/SiPixelDetId Fireworks/Core rootcore
FireworksGeometry_EX_LIB   := FireworksGeometry
FireworksGeometry_EX_USE   := $(foreach d,$(FireworksGeometry_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FireworksGeometry_PACKAGE := self/src/Fireworks/Geometry/src
ALL_PRODS += FireworksGeometry
FireworksGeometry_CLASS := LIBRARY
Fireworks/Geometry_forbigobj+=FireworksGeometry
FireworksGeometry_INIT_FUNC        += $$(eval $$(call Library,FireworksGeometry,src/Fireworks/Geometry/src,src_Fireworks_Geometry_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(GeneratorInterfaceCore_plugins)),)
GeneratorInterfaceCore_plugins := self/src/GeneratorInterface/Core/plugins
PLUGINS:=yes
GeneratorInterfaceCore_plugins_files := $(patsubst src/GeneratorInterface/Core/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/Core/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/Core/plugins/$(file). Please fix src/GeneratorInterface/Core/plugins/BuildFile.))))
GeneratorInterfaceCore_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Core/plugins/BuildFile
GeneratorInterfaceCore_plugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities SimDataFormats/GeneratorProducts GeneratorInterface/Core FWCore/SharedMemory
GeneratorInterfaceCore_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfaceCore_plugins,GeneratorInterfaceCore_plugins,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/Core/plugins))
GeneratorInterfaceCore_plugins_PACKAGE := self/src/GeneratorInterface/Core/plugins
ALL_PRODS += GeneratorInterfaceCore_plugins
GeneratorInterface/Core_forbigobj+=GeneratorInterfaceCore_plugins
GeneratorInterfaceCore_plugins_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceCore_plugins,src/GeneratorInterface/Core/plugins,src_GeneratorInterface_Core_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeneratorInterfaceCore_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfaceCore_plugins,src/GeneratorInterface/Core/plugins))
endif
ALL_COMMONRULES += src_GeneratorInterface_Core_plugins
src_GeneratorInterface_Core_plugins_parent := GeneratorInterface/Core
src_GeneratorInterface_Core_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Core_plugins,src/GeneratorInterface/Core/plugins,PLUGINS))
ifeq ($(strip $(GeneratorInterface/Core)),)
ALL_COMMONRULES += src_GeneratorInterface_Core_src
src_GeneratorInterface_Core_src_parent := GeneratorInterface/Core
src_GeneratorInterface_Core_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_GeneratorInterface_Core_src,src/GeneratorInterface/Core/src,LIBRARY))
GeneratorInterfaceCore := self/GeneratorInterface/Core
GeneratorInterface/Core := GeneratorInterfaceCore
GeneratorInterfaceCore_files := $(patsubst src/GeneratorInterface/Core/src/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/Core/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeneratorInterfaceCore_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Core/BuildFile
GeneratorInterfaceCore_LOC_USE := self  FWCore/Concurrency FWCore/ServiceRegistry FWCore/Utilities FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/LHEInterface heppdt boost clhep lhapdf f77compiler root
GeneratorInterfaceCore_EX_LIB   := GeneratorInterfaceCore
GeneratorInterfaceCore_EX_USE   := $(foreach d,$(GeneratorInterfaceCore_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceCore_PACKAGE := self/src/GeneratorInterface/Core/src
ALL_PRODS += GeneratorInterfaceCore
GeneratorInterfaceCore_CLASS := LIBRARY
GeneratorInterface/Core_forbigobj+=GeneratorInterfaceCore
GeneratorInterfaceCore_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceCore,src/GeneratorInterface/Core/src,src_GeneratorInterface_Core_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ALL_COMMONRULES += src_GeneratorInterface_GenFilters_plugins
src_GeneratorInterface_GenFilters_plugins_parent := GeneratorInterface/GenFilters
src_GeneratorInterface_GenFilters_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_GenFilters_plugins,src/GeneratorInterface/GenFilters/plugins,PLUGINS))
ifeq ($(strip $(GeneratorInterface/GenFilters)),)
ALL_COMMONRULES += src_GeneratorInterface_GenFilters_src
src_GeneratorInterface_GenFilters_src_parent := GeneratorInterface/GenFilters
src_GeneratorInterface_GenFilters_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_GeneratorInterface_GenFilters_src,src/GeneratorInterface/GenFilters/src,LIBRARY))
GeneratorInterfaceGenFilters := self/GeneratorInterface/GenFilters
GeneratorInterface/GenFilters := GeneratorInterfaceGenFilters
GeneratorInterfaceGenFilters_files := $(patsubst src/GeneratorInterface/GenFilters/src/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/GenFilters/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeneratorInterfaceGenFilters_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/GenFilters/BuildFile
GeneratorInterfaceGenFilters_LOC_USE := self  fastjet boost FWCore/PluginManager FWCore/ParameterSet FWCore/Framework FWCore/Utilities SimDataFormats/GeneratorProducts heppdt clhep root GeneratorInterface/Pythia6Interface GeneratorInterface/Core pythia8 SimGeneral/HepPDTRecord DataFormats/GeometryVector DataFormats/GeometrySurface TrackPropagation/SteppingHelixPropagator MagneticField/Records TrackingTools/TrajectoryState TrackingTools/TrajectoryParametrization TrackingTools/Records CommonTools/UtilAlgos FWCore/ServiceRegistry CommonTools/BaseParticlePropagator TrackingTools/GeomPropagators DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/EgammaReco DataFormats/Math
GeneratorInterfaceGenFilters_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfaceGenFilters,GeneratorInterfaceGenFilters,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/GenFilters/src))
GeneratorInterfaceGenFilters_PACKAGE := self/src/GeneratorInterface/GenFilters/src
ALL_PRODS += GeneratorInterfaceGenFilters
GeneratorInterfaceGenFilters_CLASS := LIBRARY
GeneratorInterface/GenFilters_forbigobj+=GeneratorInterfaceGenFilters
GeneratorInterfaceGenFilters_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceGenFilters,src/GeneratorInterface/GenFilters/src,src_GeneratorInterface_GenFilters_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
ifeq ($(strip $(GeneratorInterfaceRivetInterface_plugins)),)
GeneratorInterfaceRivetInterface_plugins := self/src/GeneratorInterface/RivetInterface/plugins
PLUGINS:=yes
GeneratorInterfaceRivetInterface_plugins_files := $(patsubst src/GeneratorInterface/RivetInterface/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/RivetInterface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/RivetInterface/plugins/$(file). Please fix src/GeneratorInterface/RivetInterface/plugins/BuildFile.))))
GeneratorInterfaceRivetInterface_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/RivetInterface/plugins/BuildFile
GeneratorInterfaceRivetInterface_plugins_LOC_USE := self  FWCore/Framework FWCore/ServiceRegistry SimDataFormats/GeneratorProducts GeneratorInterface/Core DataFormats/Common rivet yoda gsl tinyxml2 DQMServices/Core SimGeneral/HepPDTRecord DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/METReco DataFormats/PatCandidates
GeneratorInterfaceRivetInterface_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfaceRivetInterface_plugins,GeneratorInterfaceRivetInterface_plugins,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/RivetInterface/plugins))
GeneratorInterfaceRivetInterface_plugins_PACKAGE := self/src/GeneratorInterface/RivetInterface/plugins
ALL_PRODS += GeneratorInterfaceRivetInterface_plugins
GeneratorInterface/RivetInterface_forbigobj+=GeneratorInterfaceRivetInterface_plugins
GeneratorInterfaceRivetInterface_plugins_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceRivetInterface_plugins,src/GeneratorInterface/RivetInterface/plugins,src_GeneratorInterface_RivetInterface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeneratorInterfaceRivetInterface_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfaceRivetInterface_plugins,src/GeneratorInterface/RivetInterface/plugins))
endif
ALL_COMMONRULES += src_GeneratorInterface_RivetInterface_plugins
src_GeneratorInterface_RivetInterface_plugins_parent := GeneratorInterface/RivetInterface
src_GeneratorInterface_RivetInterface_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_RivetInterface_plugins,src/GeneratorInterface/RivetInterface/plugins,PLUGINS))
ifeq ($(strip $(GeneratorInterface/RivetInterface)),)
ALL_COMMONRULES += src_GeneratorInterface_RivetInterface_src
src_GeneratorInterface_RivetInterface_src_parent := GeneratorInterface/RivetInterface
src_GeneratorInterface_RivetInterface_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_GeneratorInterface_RivetInterface_src,src/GeneratorInterface/RivetInterface/src,LIBRARY))
GeneratorInterfaceRivetInterface := self/GeneratorInterface/RivetInterface
GeneratorInterface/RivetInterface := GeneratorInterfaceRivetInterface
GeneratorInterfaceRivetInterface_files := $(patsubst src/GeneratorInterface/RivetInterface/src/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/RivetInterface/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeneratorInterfaceRivetInterface_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/RivetInterface/BuildFile
GeneratorInterfaceRivetInterface_LOC_USE := self  rivet yoda fastjet clhep boost gsl root GeneratorInterface/Core GeneratorInterface/Pythia6Interface
GeneratorInterfaceRivetInterface_PRE_INIT_FUNC += $$(eval $$(call rivetPlugin,GeneratorInterfaceRivetInterface,GeneratorInterfaceRivetInterface,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/RivetInterface/src))
GeneratorInterfaceRivetInterface_PACKAGE := self/src/GeneratorInterface/RivetInterface/src
ALL_PRODS += GeneratorInterfaceRivetInterface
GeneratorInterfaceRivetInterface_CLASS := LIBRARY
GeneratorInterface/RivetInterface_forbigobj+=GeneratorInterfaceRivetInterface
GeneratorInterfaceRivetInterface_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfaceRivetInterface,src/GeneratorInterface/RivetInterface/src,src_GeneratorInterface_RivetInterface_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),rivet))
endif
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
ifeq ($(strip $(Geometry/HGCalGeometry)),)
ALL_COMMONRULES += src_Geometry_HGCalGeometry_src
src_Geometry_HGCalGeometry_src_parent := Geometry/HGCalGeometry
src_Geometry_HGCalGeometry_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Geometry_HGCalGeometry_src,src/Geometry/HGCalGeometry/src,LIBRARY))
GeometryHGCalGeometry := self/Geometry/HGCalGeometry
Geometry/HGCalGeometry := GeometryHGCalGeometry
GeometryHGCalGeometry_files := $(patsubst src/Geometry/HGCalGeometry/src/%,%,$(wildcard $(foreach dir,src/Geometry/HGCalGeometry/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeometryHGCalGeometry_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HGCalGeometry/BuildFile
GeometryHGCalGeometry_LOC_USE := self  DataFormats/EcalDetId DataFormats/ForwardDetId DataFormats/Common CommonTools/UtilAlgos FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/HGCalCommonData MagneticField/Engine TrackingTools/TrajectoryState TrackingTools/GeomPropagators
GeometryHGCalGeometry_EX_LIB   := GeometryHGCalGeometry
GeometryHGCalGeometry_EX_USE   := $(foreach d,$(GeometryHGCalGeometry_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryHGCalGeometry_PACKAGE := self/src/Geometry/HGCalGeometry/src
ALL_PRODS += GeometryHGCalGeometry
GeometryHGCalGeometry_CLASS := LIBRARY
Geometry/HGCalGeometry_forbigobj+=GeometryHGCalGeometry
GeometryHGCalGeometry_INIT_FUNC        += $$(eval $$(call Library,GeometryHGCalGeometry,src/Geometry/HGCalGeometry/src,src_Geometry_HGCalGeometry_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(Geometry/HcalCommonData)),)
ALL_COMMONRULES += src_Geometry_HcalCommonData_src
src_Geometry_HcalCommonData_src_parent := Geometry/HcalCommonData
src_Geometry_HcalCommonData_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Geometry_HcalCommonData_src,src/Geometry/HcalCommonData/src,LIBRARY))
GeometryHcalCommonData := self/Geometry/HcalCommonData
Geometry/HcalCommonData := GeometryHcalCommonData
GeometryHcalCommonData_files := $(patsubst src/Geometry/HcalCommonData/src/%,%,$(wildcard $(foreach dir,src/Geometry/HcalCommonData/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeometryHcalCommonData_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/BuildFile
GeometryHcalCommonData_LOC_USE := self  DetectorDescription/Core DataFormats/HcalDetId clhep
GeometryHcalCommonData_EX_LIB   := GeometryHcalCommonData
GeometryHcalCommonData_EX_USE   := $(foreach d,$(GeometryHcalCommonData_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryHcalCommonData_PACKAGE := self/src/Geometry/HcalCommonData/src
ALL_PRODS += GeometryHcalCommonData
GeometryHcalCommonData_CLASS := LIBRARY
Geometry/HcalCommonData_forbigobj+=GeometryHcalCommonData
GeometryHcalCommonData_INIT_FUNC        += $$(eval $$(call Library,GeometryHcalCommonData,src/Geometry/HcalCommonData/src,src_Geometry_HcalCommonData_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(KaMuCa/Calibration)),)
ALL_COMMONRULES += src_KaMuCa_Calibration_src
src_KaMuCa_Calibration_src_parent := KaMuCa/Calibration
src_KaMuCa_Calibration_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_KaMuCa_Calibration_src,src/KaMuCa/Calibration/src,LIBRARY))
KaMuCaCalibration := self/KaMuCa/Calibration
KaMuCa/Calibration := KaMuCaCalibration
KaMuCaCalibration_files := $(patsubst src/KaMuCa/Calibration/src/%,%,$(wildcard $(foreach dir,src/KaMuCa/Calibration/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
KaMuCaCalibration_BuildFile    := $(WORKINGDIR)/cache/bf/src/KaMuCa/Calibration/BuildFile
KaMuCaCalibration_LOC_USE := self  root rootmath roofit roostats histfactory libxml2 DataFormats/Math FWCore/ParameterSet boost_program_options boost_filesystem
KaMuCaCalibration_LCGDICTS  := x 
KaMuCaCalibration_PRE_INIT_FUNC += $$(eval $$(call LCGDict,KaMuCaCalibration,src/KaMuCa/Calibration/src/classes.h,src/KaMuCa/Calibration/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
KaMuCaCalibration_EX_LIB   := KaMuCaCalibration
KaMuCaCalibration_EX_USE   := $(foreach d,$(KaMuCaCalibration_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
KaMuCaCalibration_PACKAGE := self/src/KaMuCa/Calibration/src
ALL_PRODS += KaMuCaCalibration
KaMuCaCalibration_CLASS := LIBRARY
KaMuCa/Calibration_forbigobj+=KaMuCaCalibration
KaMuCaCalibration_INIT_FUNC        += $$(eval $$(call Library,KaMuCaCalibration,src/KaMuCa/Calibration/src,src_KaMuCa_Calibration_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(KinZfitter/HelperFunction)),)
ALL_COMMONRULES += src_KinZfitter_HelperFunction_src
src_KinZfitter_HelperFunction_src_parent := KinZfitter/HelperFunction
src_KinZfitter_HelperFunction_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_KinZfitter_HelperFunction_src,src/KinZfitter/HelperFunction/src,LIBRARY))
KinZfitterHelperFunction := self/KinZfitter/HelperFunction
KinZfitter/HelperFunction := KinZfitterHelperFunction
KinZfitterHelperFunction_files := $(patsubst src/KinZfitter/HelperFunction/src/%,%,$(wildcard $(foreach dir,src/KinZfitter/HelperFunction/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
KinZfitterHelperFunction_BuildFile    := $(WORKINGDIR)/cache/bf/src/KinZfitter/HelperFunction/BuildFile
KinZfitterHelperFunction_LOC_USE := self  DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate DataFormats/Provenance DataFormats/VertexReco DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/EgammaReco DataFormats/HLTReco DataFormats/CaloTowers FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities SimDataFormats/PileupSummaryInfo EgammaAnalysis/ElectronTools RecoParticleFlow/PFClusterTools DataFormats/METReco TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos SimTracker/Records SimTracker/TrackAssociation DataFormats/EcalRecHit Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils MagneticField/Records root rootmath roofit roostats histfactory
KinZfitterHelperFunction_EX_LIB   := KinZfitterHelperFunction
KinZfitterHelperFunction_EX_USE   := $(foreach d,$(KinZfitterHelperFunction_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
KinZfitterHelperFunction_PACKAGE := self/src/KinZfitter/HelperFunction/src
ALL_PRODS += KinZfitterHelperFunction
KinZfitterHelperFunction_CLASS := LIBRARY
KinZfitter/HelperFunction_forbigobj+=KinZfitterHelperFunction
KinZfitterHelperFunction_INIT_FUNC        += $$(eval $$(call Library,KinZfitterHelperFunction,src/KinZfitter/HelperFunction/src,src_KinZfitter_HelperFunction_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(KinZfitter/KinZfitter)),)
ALL_COMMONRULES += src_KinZfitter_KinZfitter_src
src_KinZfitter_KinZfitter_src_parent := KinZfitter/KinZfitter
src_KinZfitter_KinZfitter_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_KinZfitter_KinZfitter_src,src/KinZfitter/KinZfitter/src,LIBRARY))
KinZfitterKinZfitter := self/KinZfitter/KinZfitter
KinZfitter/KinZfitter := KinZfitterKinZfitter
KinZfitterKinZfitter_files := $(patsubst src/KinZfitter/KinZfitter/src/%,%,$(wildcard $(foreach dir,src/KinZfitter/KinZfitter/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
KinZfitterKinZfitter_BuildFile    := $(WORKINGDIR)/cache/bf/src/KinZfitter/KinZfitter/BuildFile
KinZfitterKinZfitter_LOC_USE := self  DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate DataFormats/Provenance DataFormats/VertexReco DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/EgammaReco DataFormats/HLTReco DataFormats/CaloTowers FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities SimDataFormats/PileupSummaryInfo EgammaAnalysis/ElectronTools RecoParticleFlow/PFClusterTools DataFormats/METReco TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos SimTracker/Records SimTracker/TrackAssociation DataFormats/EcalRecHit Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils KinZfitter/HelperFunction root rootmath roofit roostats histfactory
KinZfitterKinZfitter_EX_LIB   := KinZfitterKinZfitter
KinZfitterKinZfitter_EX_USE   := $(foreach d,$(KinZfitterKinZfitter_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
KinZfitterKinZfitter_PACKAGE := self/src/KinZfitter/KinZfitter/src
ALL_PRODS += KinZfitterKinZfitter
KinZfitterKinZfitter_CLASS := LIBRARY
KinZfitter/KinZfitter_forbigobj+=KinZfitterKinZfitter
KinZfitterKinZfitter_INIT_FUNC        += $$(eval $$(call Library,KinZfitterKinZfitter,src/KinZfitter/KinZfitter/src,src_KinZfitter_KinZfitter_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(MelaAnalytics/CandidateLOCaster)),)
ALL_COMMONRULES += src_MelaAnalytics_CandidateLOCaster_src
src_MelaAnalytics_CandidateLOCaster_src_parent := MelaAnalytics/CandidateLOCaster
src_MelaAnalytics_CandidateLOCaster_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MelaAnalytics_CandidateLOCaster_src,src/MelaAnalytics/CandidateLOCaster/src,LIBRARY))
MelaAnalyticsCandidateLOCaster := self/MelaAnalytics/CandidateLOCaster
MelaAnalytics/CandidateLOCaster := MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_files := $(patsubst src/MelaAnalytics/CandidateLOCaster/src/%,%,$(wildcard $(foreach dir,src/MelaAnalytics/CandidateLOCaster/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MelaAnalyticsCandidateLOCaster_BuildFile    := $(WORKINGDIR)/cache/bf/src/MelaAnalytics/CandidateLOCaster/BuildFile
MelaAnalyticsCandidateLOCaster_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/MelaAnalytics/CandidateLOCaster/interface/ -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
MelaAnalyticsCandidateLOCaster_LOC_USE := self  root rootmath roofit roofitcore JHUGenMELA/MELA
MelaAnalyticsCandidateLOCaster_EX_LIB   := MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_EX_USE   := $(foreach d,$(MelaAnalyticsCandidateLOCaster_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MelaAnalyticsCandidateLOCaster_PACKAGE := self/src/MelaAnalytics/CandidateLOCaster/src
ALL_PRODS += MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_CLASS := LIBRARY
MelaAnalytics/CandidateLOCaster_forbigobj+=MelaAnalyticsCandidateLOCaster
MelaAnalyticsCandidateLOCaster_INIT_FUNC        += $$(eval $$(call Library,MelaAnalyticsCandidateLOCaster,src/MelaAnalytics/CandidateLOCaster/src,src_MelaAnalytics_CandidateLOCaster_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(MelaAnalytics/EventContainer)),)
ALL_COMMONRULES += src_MelaAnalytics_EventContainer_src
src_MelaAnalytics_EventContainer_src_parent := MelaAnalytics/EventContainer
src_MelaAnalytics_EventContainer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MelaAnalytics_EventContainer_src,src/MelaAnalytics/EventContainer/src,LIBRARY))
MelaAnalyticsEventContainer := self/MelaAnalytics/EventContainer
MelaAnalytics/EventContainer := MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_files := $(patsubst src/MelaAnalytics/EventContainer/src/%,%,$(wildcard $(foreach dir,src/MelaAnalytics/EventContainer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MelaAnalyticsEventContainer_BuildFile    := $(WORKINGDIR)/cache/bf/src/MelaAnalytics/EventContainer/BuildFile
MelaAnalyticsEventContainer_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/MelaAnalytics/EventContainer/interface/ -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
MelaAnalyticsEventContainer_LOC_USE := self  root rootmath roofit roofitcore JHUGenMELA/MELA
MelaAnalyticsEventContainer_EX_LIB   := MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_EX_USE   := $(foreach d,$(MelaAnalyticsEventContainer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MelaAnalyticsEventContainer_PACKAGE := self/src/MelaAnalytics/EventContainer/src
ALL_PRODS += MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_CLASS := LIBRARY
MelaAnalytics/EventContainer_forbigobj+=MelaAnalyticsEventContainer
MelaAnalyticsEventContainer_INIT_FUNC        += $$(eval $$(call Library,MelaAnalyticsEventContainer,src/MelaAnalytics/EventContainer/src,src_MelaAnalytics_EventContainer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(MelaAnalytics/GenericMEComputer)),)
ALL_COMMONRULES += src_MelaAnalytics_GenericMEComputer_src
src_MelaAnalytics_GenericMEComputer_src_parent := MelaAnalytics/GenericMEComputer
src_MelaAnalytics_GenericMEComputer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MelaAnalytics_GenericMEComputer_src,src/MelaAnalytics/GenericMEComputer/src,LIBRARY))
MelaAnalyticsGenericMEComputer := self/MelaAnalytics/GenericMEComputer
MelaAnalytics/GenericMEComputer := MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_files := $(patsubst src/MelaAnalytics/GenericMEComputer/src/%,%,$(wildcard $(foreach dir,src/MelaAnalytics/GenericMEComputer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MelaAnalyticsGenericMEComputer_BuildFile    := $(WORKINGDIR)/cache/bf/src/MelaAnalytics/GenericMEComputer/BuildFile
MelaAnalyticsGenericMEComputer_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/MelaAnalytics/GenericMEComputer/interface/ -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
MelaAnalyticsGenericMEComputer_LOC_USE := self  root rootmath roofit roofitcore JHUGenMELA/MELA
MelaAnalyticsGenericMEComputer_EX_LIB   := MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_EX_USE   := $(foreach d,$(MelaAnalyticsGenericMEComputer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MelaAnalyticsGenericMEComputer_PACKAGE := self/src/MelaAnalytics/GenericMEComputer/src
ALL_PRODS += MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_CLASS := LIBRARY
MelaAnalytics/GenericMEComputer_forbigobj+=MelaAnalyticsGenericMEComputer
MelaAnalyticsGenericMEComputer_INIT_FUNC        += $$(eval $$(call Library,MelaAnalyticsGenericMEComputer,src/MelaAnalytics/GenericMEComputer/src,src_MelaAnalytics_GenericMEComputer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(PhysicsTools/NanoAOD)),)
src_PhysicsTools_NanoAOD := self/PhysicsTools/NanoAOD
PhysicsTools/NanoAOD  := src_PhysicsTools_NanoAOD
src_PhysicsTools_NanoAOD_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NanoAOD/BuildFile
src_PhysicsTools_NanoAOD_LOC_USE := DataFormats/NanoAOD boost DataFormats/Common self DataFormats/Candidate fastjet-contrib fastjet DataFormats/StdDictionaries FWCore/Common FWCore/Utilities
src_PhysicsTools_NanoAOD_EX_USE   := $(foreach d,$(src_PhysicsTools_NanoAOD_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_PhysicsTools_NanoAOD
src_PhysicsTools_NanoAOD_INIT_FUNC += $$(eval $$(call EmptyPackage,src_PhysicsTools_NanoAOD,src/PhysicsTools/NanoAOD))
endif

ifeq ($(strip $(PhysicsToolsNanoAODPlugins)),)
PhysicsToolsNanoAODPlugins := self/src/PhysicsTools/NanoAOD/plugins
PLUGINS:=yes
PhysicsToolsNanoAODPlugins_files := $(patsubst src/PhysicsTools/NanoAOD/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/NanoAOD/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/NanoAOD/plugins/$(file). Please fix src/PhysicsTools/NanoAOD/plugins/BuildFile.))))
PhysicsToolsNanoAODPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NanoAOD/plugins/BuildFile
PhysicsToolsNanoAODPlugins_LOC_USE := self  PhysicsTools/TensorFlow FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities DataFormats/Candidate DataFormats/PatCandidates CommonTools/MVAUtils RecoEgamma/EgammaTools PhysicsTools/JetMCUtils DataFormats/NanoAOD roothistmatrix RecoVertex/VertexTools RecoVertex/VertexPrimitives DataFormats/L1TGlobal IOPool/Provenance DQMServices/Core CondFormats/BTauObjects CondTools/BTau fastjet fastjet-contrib
PhysicsToolsNanoAODPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsNanoAODPlugins,PhysicsToolsNanoAODPlugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/NanoAOD/plugins))
PhysicsToolsNanoAODPlugins_PACKAGE := self/src/PhysicsTools/NanoAOD/plugins
ALL_PRODS += PhysicsToolsNanoAODPlugins
PhysicsTools/NanoAOD_forbigobj+=PhysicsToolsNanoAODPlugins
PhysicsToolsNanoAODPlugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsNanoAODPlugins,src/PhysicsTools/NanoAOD/plugins,src_PhysicsTools_NanoAOD_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsNanoAODPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsNanoAODPlugins,src/PhysicsTools/NanoAOD/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_NanoAOD_plugins
src_PhysicsTools_NanoAOD_plugins_parent := PhysicsTools/NanoAOD
src_PhysicsTools_NanoAOD_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NanoAOD_plugins,src/PhysicsTools/NanoAOD/plugins,PLUGINS))
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PLUGINS:=yes
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE := self  PhysicsTools/PatAlgos PhysicsTools/TensorFlow FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent DataFormats/HepMCCandidate PhysicsTools/PatUtils CondFormats/JetMETObjects CommonTools/CandAlgos CommonTools/MVAUtils JetMETCorrections/Objects JetMETCorrections/JetCorrector TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/JetMatching SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/plugins))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsTools/PatAlgos_forbigobj+=PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsPatAlgos_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE := self  CommonTools/MVAUtils DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos Geometry/CaloTopology RecoEgamma/EgammaTools RecoTracker/DeDx CondFormats/HcalObjects CondFormats/EcalObjects clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(foreach d,$(PhysicsToolsPatAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_CLASS := LIBRARY
PhysicsTools/PatAlgos_forbigobj+=PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(PhysicsToolsPatUtils_plugins)),)
PhysicsToolsPatUtils_plugins := self/src/PhysicsTools/PatUtils/plugins
PLUGINS:=yes
PhysicsToolsPatUtils_plugins_files := $(patsubst src/PhysicsTools/PatUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatUtils/plugins/$(file). Please fix src/PhysicsTools/PatUtils/plugins/BuildFile.))))
PhysicsToolsPatUtils_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/plugins/BuildFile
PhysicsToolsPatUtils_plugins_LOC_USE := self  FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils CondFormats/JetMETObjects DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates JetMETCorrections/Objects JetMETCorrections/JetCorrector JetMETCorrections/Type1MET JetMETCorrections/Modules RecoMET/METAlgorithms PhysicsTools/PatUtils PhysicsTools/UtilAlgos
PhysicsToolsPatUtils_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtils_plugins,PhysicsToolsPatUtils_plugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatUtils/plugins))
PhysicsToolsPatUtils_plugins_PACKAGE := self/src/PhysicsTools/PatUtils/plugins
ALL_PRODS += PhysicsToolsPatUtils_plugins
PhysicsTools/PatUtils_forbigobj+=PhysicsToolsPatUtils_plugins
PhysicsToolsPatUtils_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins,src_PhysicsTools_PatUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsPatUtils_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_plugins
src_PhysicsTools_PatUtils_plugins_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_plugins,src/PhysicsTools/PatUtils/plugins,PLUGINS))
ifeq ($(strip $(PhysicsTools/PatUtils)),)
ALL_COMMONRULES += src_PhysicsTools_PatUtils_src
src_PhysicsTools_PatUtils_src_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_src,src/PhysicsTools/PatUtils/src,LIBRARY))
PhysicsToolsPatUtils := self/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/BuildFile
PhysicsToolsPatUtils_LOC_USE := self  TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General PhysicsTools/UtilAlgos root
PhysicsToolsPatUtils_LCGDICTS  := x 
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src/classes.h,src/PhysicsTools/PatUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
PhysicsToolsPatUtils_EX_USE   := $(foreach d,$(PhysicsToolsPatUtils_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/src
ALL_PRODS += PhysicsToolsPatUtils
PhysicsToolsPatUtils_CLASS := LIBRARY
PhysicsTools/PatUtils_forbigobj+=PhysicsToolsPatUtils
PhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src,src_PhysicsTools_PatUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(RecoEgammaEgammaToolsPlugins)),)
RecoEgammaEgammaToolsPlugins := self/src/RecoEgamma/EgammaTools/plugins
PLUGINS:=yes
RecoEgammaEgammaToolsPlugins_files := $(patsubst src/RecoEgamma/EgammaTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/EgammaTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/EgammaTools/plugins/$(file). Please fix src/RecoEgamma/EgammaTools/plugins/BuildFile.))))
RecoEgammaEgammaToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaTools/plugins/BuildFile
RecoEgammaEgammaToolsPlugins_LOC_USE := self  FWCore/Framework CommonTools/CandAlgos CondCore/PluginSystem CondCore/DBOutputService CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates RecoEgamma/EgammaTools
RecoEgammaEgammaToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaEgammaToolsPlugins,RecoEgammaEgammaToolsPlugins,$(SCRAMSTORENAME_LIB),src/RecoEgamma/EgammaTools/plugins))
RecoEgammaEgammaToolsPlugins_PACKAGE := self/src/RecoEgamma/EgammaTools/plugins
ALL_PRODS += RecoEgammaEgammaToolsPlugins
RecoEgamma/EgammaTools_forbigobj+=RecoEgammaEgammaToolsPlugins
RecoEgammaEgammaToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaEgammaToolsPlugins,src/RecoEgamma/EgammaTools/plugins,src_RecoEgamma_EgammaTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaEgammaToolsPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaEgammaToolsPlugins,src/RecoEgamma/EgammaTools/plugins))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_plugins
src_RecoEgamma_EgammaTools_plugins_parent := RecoEgamma/EgammaTools
src_RecoEgamma_EgammaTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_plugins,src/RecoEgamma/EgammaTools/plugins,PLUGINS))
ifeq ($(strip $(RecoEgamma/EgammaTools)),)
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_src
src_RecoEgamma_EgammaTools_src_parent := RecoEgamma/EgammaTools
src_RecoEgamma_EgammaTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_src,src/RecoEgamma/EgammaTools/src,LIBRARY))
RecoEgammaEgammaTools := self/RecoEgamma/EgammaTools
RecoEgamma/EgammaTools := RecoEgammaEgammaTools
RecoEgammaEgammaTools_files := $(patsubst src/RecoEgamma/EgammaTools/src/%,%,$(wildcard $(foreach dir,src/RecoEgamma/EgammaTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEgammaEgammaTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaTools/BuildFile
RecoEgammaEgammaTools_LOC_USE := self  FWCore/Framework DataFormats/HcalRecHit DataFormats/EgammaReco DataFormats/EgammaCandidates Geometry/CaloGeometry RecoLocalCalo/HGCalRecAlgos clhep root roottmva CondFormats/DataRecord CondFormats/EgammaObjects RecoEcal/EgammaCoreTools CondCore/DBOutputService DataFormats/ParticleFlowReco CommonTools/Utils
RecoEgammaEgammaTools_EX_LIB   := RecoEgammaEgammaTools
RecoEgammaEgammaTools_EX_USE   := $(foreach d,$(RecoEgammaEgammaTools_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaTools_PACKAGE := self/src/RecoEgamma/EgammaTools/src
ALL_PRODS += RecoEgammaEgammaTools
RecoEgammaEgammaTools_CLASS := LIBRARY
RecoEgamma/EgammaTools_forbigobj+=RecoEgammaEgammaTools
RecoEgammaEgammaTools_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaEgammaTools,src/RecoEgamma/EgammaTools/src,src_RecoEgamma_EgammaTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(RecoEgamma/ElectronIdentification)),)
ALL_COMMONRULES += src_RecoEgamma_ElectronIdentification_src
src_RecoEgamma_ElectronIdentification_src_parent := RecoEgamma/ElectronIdentification
src_RecoEgamma_ElectronIdentification_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEgamma_ElectronIdentification_src,src/RecoEgamma/ElectronIdentification/src,LIBRARY))
RecoEgammaElectronIdentification := self/RecoEgamma/ElectronIdentification
RecoEgamma/ElectronIdentification := RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_files := $(patsubst src/RecoEgamma/ElectronIdentification/src/%,%,$(wildcard $(foreach dir,src/RecoEgamma/ElectronIdentification/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEgammaElectronIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/BuildFile
RecoEgammaElectronIdentification_LOC_USE := self  FWCore/Framework DataFormats/EgammaReco Geometry/CaloGeometry CondFormats/EgammaObjects RecoEcal/EgammaCoreTools DataFormats/TrackReco CommonTools/MVAUtils MagneticField/Records MagneticField/Engine RecoEgamma/EgammaTools RecoEgamma/EgammaIsolationAlgos PhysicsTools/SelectorUtils
RecoEgammaElectronIdentification_LCGDICTS  := x 
RecoEgammaElectronIdentification_PRE_INIT_FUNC += $$(eval $$(call LCGDict,RecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/src/classes.h,src/RecoEgamma/ElectronIdentification/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
RecoEgammaElectronIdentification_EX_LIB   := RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_EX_USE   := $(foreach d,$(RecoEgammaElectronIdentification_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaElectronIdentification_PACKAGE := self/src/RecoEgamma/ElectronIdentification/src
ALL_PRODS += RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_CLASS := LIBRARY
RecoEgamma/ElectronIdentification_forbigobj+=RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/src,src_RecoEgamma_ElectronIdentification_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(RecoEgamma/PhotonIdentification)),)
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_src
src_RecoEgamma_PhotonIdentification_src_parent := RecoEgamma/PhotonIdentification
src_RecoEgamma_PhotonIdentification_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_src,src/RecoEgamma/PhotonIdentification/src,LIBRARY))
RecoEgammaPhotonIdentification := self/RecoEgamma/PhotonIdentification
RecoEgamma/PhotonIdentification := RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_files := $(patsubst src/RecoEgamma/PhotonIdentification/src/%,%,$(wildcard $(foreach dir,src/RecoEgamma/PhotonIdentification/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEgammaPhotonIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/PhotonIdentification/BuildFile
RecoEgammaPhotonIdentification_LOC_USE := self  FWCore/Framework FWCore/PluginManager DataFormats/HcalRecHit DataFormats/EgammaReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate RecoEcal/EgammaCoreTools DataFormats/BeamSpot Geometry/CaloGeometry RecoEgamma/EgammaIsolationAlgos PhysicsTools/SelectorUtils
RecoEgammaPhotonIdentification_LCGDICTS  := x 
RecoEgammaPhotonIdentification_PRE_INIT_FUNC += $$(eval $$(call LCGDict,RecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/src/classes.h,src/RecoEgamma/PhotonIdentification/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
RecoEgammaPhotonIdentification_EX_LIB   := RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_EX_USE   := $(foreach d,$(RecoEgammaPhotonIdentification_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaPhotonIdentification_PACKAGE := self/src/RecoEgamma/PhotonIdentification/src
ALL_PRODS += RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_CLASS := LIBRARY
RecoEgamma/PhotonIdentification_forbigobj+=RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/src,src_RecoEgamma_PhotonIdentification_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(SimDataFormats/HTXS)),)
ALL_COMMONRULES += src_SimDataFormats_HTXS_src
src_SimDataFormats_HTXS_src_parent := SimDataFormats/HTXS
src_SimDataFormats_HTXS_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimDataFormats_HTXS_src,src/SimDataFormats/HTXS/src,LIBRARY))
SimDataFormatsHTXS := self/SimDataFormats/HTXS
SimDataFormats/HTXS := SimDataFormatsHTXS
SimDataFormatsHTXS_files := $(patsubst src/SimDataFormats/HTXS/src/%,%,$(wildcard $(foreach dir,src/SimDataFormats/HTXS/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimDataFormatsHTXS_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimDataFormats/HTXS/BuildFile
SimDataFormatsHTXS_LOC_USE := self  DataFormats/Common DataFormats/Math
SimDataFormatsHTXS_LCGDICTS  := x 
SimDataFormatsHTXS_PRE_INIT_FUNC += $$(eval $$(call LCGDict,SimDataFormatsHTXS,src/SimDataFormats/HTXS/src/classes.h,src/SimDataFormats/HTXS/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
SimDataFormatsHTXS_EX_LIB   := SimDataFormatsHTXS
SimDataFormatsHTXS_EX_USE   := $(foreach d,$(SimDataFormatsHTXS_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsHTXS_PACKAGE := self/src/SimDataFormats/HTXS/src
ALL_PRODS += SimDataFormatsHTXS
SimDataFormatsHTXS_CLASS := LIBRARY
SimDataFormats/HTXS_forbigobj+=SimDataFormatsHTXS
SimDataFormatsHTXS_INIT_FUNC        += $$(eval $$(call Library,SimDataFormatsHTXS,src/SimDataFormats/HTXS/src,src_SimDataFormats_HTXS_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(SimG4CMS/Calo)),)
ALL_COMMONRULES += src_SimG4CMS_Calo_src
src_SimG4CMS_Calo_src_parent := SimG4CMS/Calo
src_SimG4CMS_Calo_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimG4CMS_Calo_src,src/SimG4CMS/Calo/src,LIBRARY))
SimG4CMSCalo := self/SimG4CMS/Calo
SimG4CMS/Calo := SimG4CMSCalo
SimG4CMSCalo_files := $(patsubst src/SimG4CMS/Calo/src/%,%,$(wildcard $(foreach dir,src/SimG4CMS/Calo/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimG4CMSCalo_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Calo/BuildFile
SimG4CMSCalo_LOC_USE := self  FWCore/PluginManager SimGeneral/GFlash SimG4Core/SensitiveDetector SimG4Core/Notification DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/ForwardDetId DataFormats/Math CondFormats/HcalObjects CondFormats/DataRecord SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/CaloTest Geometry/HcalCommonData Geometry/EcalCommonData Geometry/HGCalCommonData DetectorDescription/Core FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos boost clhep geant4core hepmc root rootmath
SimG4CMSCalo_EX_LIB   := SimG4CMSCalo
SimG4CMSCalo_EX_USE   := $(foreach d,$(SimG4CMSCalo_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSCalo_PACKAGE := self/src/SimG4CMS/Calo/src
ALL_PRODS += SimG4CMSCalo
SimG4CMSCalo_CLASS := LIBRARY
SimG4CMS/Calo_forbigobj+=SimG4CMSCalo
SimG4CMSCalo_INIT_FUNC        += $$(eval $$(call Library,SimG4CMSCalo,src/SimG4CMS/Calo/src,src_SimG4CMS_Calo_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(SimG4CMSForwardPlugins)),)
SimG4CMSForwardPlugins := self/src/SimG4CMS/Forward/plugins
PLUGINS:=yes
SimG4CMSForwardPlugins_files := $(patsubst src/SimG4CMS/Forward/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimG4CMS/Forward/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimG4CMS/Forward/plugins/$(file). Please fix src/SimG4CMS/Forward/plugins/BuildFile.))))
SimG4CMSForwardPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Forward/plugins/BuildFile
SimG4CMSForwardPlugins_LOC_USE := self  FWCore/PluginManager SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Physics SimG4CMS/Calo SimG4CMS/Forward DataFormats/Math SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/CaloTest SimDataFormats/Forward DetectorDescription/Core FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger geant4core root rootmath
SimG4CMSForwardPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimG4CMSForwardPlugins,SimG4CMSForwardPlugins,$(SCRAMSTORENAME_LIB),src/SimG4CMS/Forward/plugins))
SimG4CMSForwardPlugins_PACKAGE := self/src/SimG4CMS/Forward/plugins
ALL_PRODS += SimG4CMSForwardPlugins
SimG4CMS/Forward_forbigobj+=SimG4CMSForwardPlugins
SimG4CMSForwardPlugins_INIT_FUNC        += $$(eval $$(call Library,SimG4CMSForwardPlugins,src/SimG4CMS/Forward/plugins,src_SimG4CMS_Forward_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
SimG4CMSForwardPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,SimG4CMSForwardPlugins,src/SimG4CMS/Forward/plugins))
endif
ALL_COMMONRULES += src_SimG4CMS_Forward_plugins
src_SimG4CMS_Forward_plugins_parent := SimG4CMS/Forward
src_SimG4CMS_Forward_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Forward_plugins,src/SimG4CMS/Forward/plugins,PLUGINS))
ifeq ($(strip $(SimG4CMS/Forward)),)
ALL_COMMONRULES += src_SimG4CMS_Forward_src
src_SimG4CMS_Forward_src_parent := SimG4CMS/Forward
src_SimG4CMS_Forward_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimG4CMS_Forward_src,src/SimG4CMS/Forward/src,LIBRARY))
SimG4CMSForward := self/SimG4CMS/Forward
SimG4CMS/Forward := SimG4CMSForward
SimG4CMSForward_files := $(patsubst src/SimG4CMS/Forward/src/%,%,$(wildcard $(foreach dir,src/SimG4CMS/Forward/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimG4CMSForward_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Forward/BuildFile
SimG4CMSForward_LOC_USE := self  FWCore/PluginManager FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Physics SimG4CMS/Calo SimG4CMS/Tracker DataFormats/ForwardDetId DataFormats/Math SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/Forward DetectorDescription/Core Geometry/HGCalCommonData Geometry/MTDCommonData boost clhep geant4core root rootmath
SimG4CMSForward_EX_LIB   := SimG4CMSForward
SimG4CMSForward_EX_USE   := $(foreach d,$(SimG4CMSForward_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSForward_PACKAGE := self/src/SimG4CMS/Forward/src
ALL_PRODS += SimG4CMSForward
SimG4CMSForward_CLASS := LIBRARY
SimG4CMS/Forward_forbigobj+=SimG4CMSForward
SimG4CMSForward_INIT_FUNC        += $$(eval $$(call Library,SimG4CMSForward,src/SimG4CMS/Forward/src,src_SimG4CMS_Forward_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(UFHZZAnalysisRun2/FSRPhotons)),)
src_UFHZZAnalysisRun2_FSRPhotons := self/UFHZZAnalysisRun2/FSRPhotons
UFHZZAnalysisRun2/FSRPhotons  := src_UFHZZAnalysisRun2_FSRPhotons
src_UFHZZAnalysisRun2_FSRPhotons_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/FSRPhotons/BuildFile
src_UFHZZAnalysisRun2_FSRPhotons_LOC_USE := TrackingTools/TransientTrack RecoVertex/PrimaryVertexProducer FWCore/Framework self DataFormats/VertexReco RecoEgamma/EgammaTools DataFormats/BeamSpot DataFormats/METReco TrackingTools/Records DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/EgammaCandidates FWCore/PluginManager MagneticField/Records DataFormats/Common RecoMET/METAlgorithms DataFormats/Candidate DataFormats/TrackReco FWCore/ParameterSet MagneticField/Engine
src_UFHZZAnalysisRun2_FSRPhotons_EX_USE   := $(foreach d,$(src_UFHZZAnalysisRun2_FSRPhotons_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_UFHZZAnalysisRun2_FSRPhotons
src_UFHZZAnalysisRun2_FSRPhotons_INIT_FUNC += $$(eval $$(call EmptyPackage,src_UFHZZAnalysisRun2_FSRPhotons,src/UFHZZAnalysisRun2/FSRPhotons))
endif

ifeq ($(strip $(UFHZZAnalysisRun2FSRPhotons_plugins)),)
UFHZZAnalysisRun2FSRPhotons_plugins := self/src/UFHZZAnalysisRun2/FSRPhotons/plugins
PLUGINS:=yes
UFHZZAnalysisRun2FSRPhotons_plugins_files := $(patsubst src/UFHZZAnalysisRun2/FSRPhotons/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/UFHZZAnalysisRun2/FSRPhotons/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/UFHZZAnalysisRun2/FSRPhotons/plugins/$(file). Please fix src/UFHZZAnalysisRun2/FSRPhotons/plugins/BuildFile.))))
UFHZZAnalysisRun2FSRPhotons_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/FSRPhotons/plugins/BuildFile
UFHZZAnalysisRun2FSRPhotons_plugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet CommonTools/UtilAlgos RecoEgamma/EgammaTools MagneticField/Engine MagneticField/Records TrackingTools/TrackRefitter DataFormats/ParticleFlowCandidate DataFormats/Candidate DataFormats/PatCandidates DataFormats/METReco RecoMET/METAlgorithms
UFHZZAnalysisRun2FSRPhotons_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2FSRPhotons_plugins,UFHZZAnalysisRun2FSRPhotons_plugins,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/FSRPhotons/plugins))
UFHZZAnalysisRun2FSRPhotons_plugins_PACKAGE := self/src/UFHZZAnalysisRun2/FSRPhotons/plugins
ALL_PRODS += UFHZZAnalysisRun2FSRPhotons_plugins
UFHZZAnalysisRun2/FSRPhotons_forbigobj+=UFHZZAnalysisRun2FSRPhotons_plugins
UFHZZAnalysisRun2FSRPhotons_plugins_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2FSRPhotons_plugins,src/UFHZZAnalysisRun2/FSRPhotons/plugins,src_UFHZZAnalysisRun2_FSRPhotons_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UFHZZAnalysisRun2FSRPhotons_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UFHZZAnalysisRun2FSRPhotons_plugins,src/UFHZZAnalysisRun2/FSRPhotons/plugins))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_FSRPhotons_plugins
src_UFHZZAnalysisRun2_FSRPhotons_plugins_parent := UFHZZAnalysisRun2/FSRPhotons
src_UFHZZAnalysisRun2_FSRPhotons_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_FSRPhotons_plugins,src/UFHZZAnalysisRun2/FSRPhotons/plugins,PLUGINS))
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
ifeq ($(strip $(UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer)),)
ALL_COMMONRULES += src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src_parent := UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src,LIBRARY))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer := self/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer := UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_files := $(patsubst src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/BuildFile
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_LOC_USE := self  FWCore/Framework FWCore/ServiceRegistry FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects RecoEgamma/EgammaTools RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/PatCandidates DataFormats/EgammaReco DataFormats/TrackReco TrackingTools/IPTools PhysicsTools/UtilAlgos PhysicsTools/SelectorUtils clhep root rootrflx rootcore roottmva
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_EX_LIB   := UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_EX_USE   := $(foreach d,$(UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_PACKAGE := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src
ALL_PRODS += UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_CLASS := LIBRARY
UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer_forbigobj+=UFHZZAnalysisRun2KalmanMuonCalibrationsProducer
UFHZZAnalysisRun2KalmanMuonCalibrationsProducer_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2KalmanMuonCalibrationsProducer,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/src,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer)),)
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer := self/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer
UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer  := src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/BuildFile
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_LOC_USE := clhep RecoEcal/EgammaCoreTools CondFormats/PhysicsToolsObjects FWCore/Framework self DataFormats/EgammaReco RecoEgamma/EgammaTools CondCore/DBOutputService rootrflx root Geometry/CaloTopology DataFormats/PatCandidates DataFormats/EgammaCandidates roottmva FWCore/MessageLogger DataFormats/Common CondFormats/EgammaObjects rootcore PhysicsTools/SelectorUtils TrackingTools/IPTools DataFormats/Candidate DataFormats/TrackReco FWCore/ServiceRegistry PhysicsTools/UtilAlgos FWCore/ParameterSet FWCore/Utilities
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_EX_USE   := $(foreach d,$(src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_INIT_FUNC += $$(eval $$(call EmptyPackage,src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer))
endif

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
ifeq ($(strip $(UFHZZAnalysisRun2/UFHZZ4LAna)),)
ALL_COMMONRULES += src_UFHZZAnalysisRun2_UFHZZ4LAna_src
src_UFHZZAnalysisRun2_UFHZZ4LAna_src_parent := UFHZZAnalysisRun2/UFHZZ4LAna
src_UFHZZAnalysisRun2_UFHZZ4LAna_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_UFHZZ4LAna_src,src/UFHZZAnalysisRun2/UFHZZ4LAna/src,LIBRARY))
UFHZZAnalysisRun2UFHZZ4LAna := self/UFHZZAnalysisRun2/UFHZZ4LAna
UFHZZAnalysisRun2/UFHZZ4LAna := UFHZZAnalysisRun2UFHZZ4LAna
UFHZZAnalysisRun2UFHZZ4LAna_files := $(patsubst src/UFHZZAnalysisRun2/UFHZZ4LAna/src/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/UFHZZ4LAna/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2UFHZZ4LAna_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/UFHZZ4LAna/BuildFile
UFHZZAnalysisRun2UFHZZ4LAna_LOC_FLAGS_CXXFLAGS   := -g
UFHZZAnalysisRun2UFHZZ4LAna_LOC_USE := self  DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate DataFormats/Provenance DataFormats/VertexReco DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/EgammaReco DataFormats/HLTReco DataFormats/CaloTowers FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Common PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities SimDataFormats/PileupSummaryInfo SimDataFormats/GeneratorProducts EgammaAnalysis/ElectronTools RecoEgamma/EgammaTools RecoParticleFlow/PFClusterTools DataFormats/METReco TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos SimTracker/Records SimTracker/TrackAssociation DataFormats/EcalRecHit Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools PhysicsTools/SelectorUtils MagneticField/Records JHUGenMELA/MELA KinZfitter/KinZfitter CondFormats/JetMETObjects JetMETCorrections/Objects CondCore/PluginSystem CondFormats/DataRecord CondCore/DBCommon CondCore/DBOutputService JetMETCorrections/Algorithms JetMETCorrections/JetCorrector JetMETCorrections/Modules CondFormats/BTauObjects CondTools/BTau
UFHZZAnalysisRun2UFHZZ4LAna_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2UFHZZ4LAna,UFHZZAnalysisRun2UFHZZ4LAna,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/UFHZZ4LAna/src))
UFHZZAnalysisRun2UFHZZ4LAna_PACKAGE := self/src/UFHZZAnalysisRun2/UFHZZ4LAna/src
ALL_PRODS += UFHZZAnalysisRun2UFHZZ4LAna
UFHZZAnalysisRun2UFHZZ4LAna_CLASS := LIBRARY
UFHZZAnalysisRun2/UFHZZ4LAna_forbigobj+=UFHZZAnalysisRun2UFHZZ4LAna
UFHZZAnalysisRun2UFHZZ4LAna_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2UFHZZ4LAna,src/UFHZZAnalysisRun2/UFHZZ4LAna/src,src_UFHZZAnalysisRun2_UFHZZ4LAna_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
ifeq ($(strip $(UFHZZAnalysisRun2/UFHZZ4LJetCorrector)),)
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector := self/UFHZZAnalysisRun2/UFHZZ4LJetCorrector
UFHZZAnalysisRun2/UFHZZ4LJetCorrector  := src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/BuildFile
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_LOC_USE := TrackingTools/TransientTrack FWCore/Framework self DataFormats/JetReco CondFormats/JetMETObjects DataFormats/METReco TrackingTools/Records Geometry/CaloTopology RecoVertex/GaussianSumVertexFit DataFormats/PatCandidates FWCore/PluginManager JetMETCorrections/Objects DataFormats/Common Geometry/Records TrackingTools/IPTools FWCore/ServiceRegistry PhysicsTools/IsolationAlgos PhysicsTools/UtilAlgos FWCore/ParameterSet
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_EX_USE   := $(foreach d,$(src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_INIT_FUNC += $$(eval $$(call EmptyPackage,src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector))
endif

ifeq ($(strip $(UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto)),)
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto := self/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins
PLUGINS:=yes
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_files := $(patsubst src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins/BuildFile
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/PatCandidates DataFormats/JetReco DataFormats/METReco DataFormats/Common PhysicsTools/UtilAlgos FWCore/ServiceRegistry TrackingTools/IPTools TrackingTools/TransientTrack TrackingTools/Records RecoVertex/GaussianSumVertexFit PhysicsTools/IsolationAlgos Geometry/CaloTopology Geometry/Records JetMETCorrections/Objects CondFormats/JetMETObjects
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,$(SCRAMSTORENAME_LIB),src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins))
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_PACKAGE := self/src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins
ALL_PRODS += UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto
UFHZZAnalysisRun2/UFHZZ4LJetCorrector_forbigobj+=UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_INIT_FUNC        += $$(eval $$(call Library,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins,src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,UFHZZAnalysisRun2UFHZZ4LJetCorrectorAuto,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins_parent := UFHZZAnalysisRun2/UFHZZ4LJetCorrector
src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins,src/UFHZZAnalysisRun2/UFHZZ4LJetCorrector/plugins,PLUGINS))
ifeq ($(strip $(Validation/Performance)),)
ALL_COMMONRULES += src_Validation_Performance_src
src_Validation_Performance_src_parent := Validation/Performance
src_Validation_Performance_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Validation_Performance_src,src/Validation/Performance/src,LIBRARY))
ValidationPerformance := self/Validation/Performance
Validation/Performance := ValidationPerformance
ValidationPerformance_files := $(patsubst src/Validation/Performance/src/%,%,$(wildcard $(foreach dir,src/Validation/Performance/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
ValidationPerformance_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/Performance/BuildFile
ValidationPerformance_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/Common DataFormats/HLTReco DQMServices/Core root
ValidationPerformance_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ValidationPerformance,ValidationPerformance,$(SCRAMSTORENAME_LIB),src/Validation/Performance/src))
ValidationPerformance_PACKAGE := self/src/Validation/Performance/src
ALL_PRODS += ValidationPerformance
ValidationPerformance_CLASS := LIBRARY
Validation/Performance_forbigobj+=ValidationPerformance
ValidationPerformance_INIT_FUNC        += $$(eval $$(call Library,ValidationPerformance,src/Validation/Performance/src,src_Validation_Performance_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
ifeq ($(strip $(JHUGenMELA/MELA)),)
ALL_COMMONRULES += src_JHUGenMELA_MELA_src
src_JHUGenMELA_MELA_src_parent := JHUGenMELA/MELA
src_JHUGenMELA_MELA_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JHUGenMELA_MELA_src,src/JHUGenMELA/MELA/src,LIBRARY))
JHUGenMELAMELA := self/JHUGenMELA/MELA
JHUGenMELA/MELA := JHUGenMELAMELA
JHUGenMELAMELA_files := $(patsubst src/JHUGenMELA/MELA/src/%,%,$(wildcard $(foreach dir,src/JHUGenMELA/MELA/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JHUGenMELAMELA_BuildFile    := $(WORKINGDIR)/cache/bf/src/JHUGenMELA/MELA/BuildFile
JHUGenMELAMELA_LOC_FLAGS_LDFLAGS   := -Wl,-rpath=$(CMSSW_BASE)/src/JHUGenMELA/MELA/data/$(SCRAM_ARCH) -L$(CMSSW_BASE)/src/JHUGenMELA/MELA/data/$(SCRAM_ARCH) -lmcfm_707 -ljhugenmela -lcollier
JHUGenMELAMELA_LOC_FLAGS_CPPDEFINES   := -D_melapkgpath_='.oODOLLAROo..oOOPEN_BRACKETOo.CMSSW_BASE.oOCLOSE_BRACKETOo./src/JHUGenMELA/MELA/'
JHUGenMELAMELA_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
JHUGenMELAMELA_LOC_FLAGS_FFLAGS   := -O3 -ffree-form -ffree-line-length-none -Dcompiler=2 -Dmela -fno-automatic -fno-f2c  -fPIC -g
JHUGenMELAMELA_LOC_USE := self  f77compiler root rootmath roofit roofitcore clhep
JHUGenMELAMELA_ROOTDICTS  := y 
JHUGenMELAMELA_PRE_INIT_FUNC += $$(eval $$(call RootDict,JHUGenMELAMELA,src/JHUGenMELA/MELA/src,LinkDef.h,$(SCRAMSTORENAME_LIB)))
JHUGenMELAMELA_EX_LIB   := JHUGenMELAMELA
JHUGenMELAMELA_EX_USE   := $(foreach d,$(JHUGenMELAMELA_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JHUGenMELAMELA_PACKAGE := self/src/JHUGenMELA/MELA/src
ALL_PRODS += JHUGenMELAMELA
JHUGenMELAMELA_CLASS := LIBRARY
JHUGenMELA/MELA_forbigobj+=JHUGenMELAMELA
JHUGenMELAMELA_INIT_FUNC        += $$(eval $$(call Library,JHUGenMELAMELA,src/JHUGenMELA/MELA/src,src_JHUGenMELA_MELA_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
