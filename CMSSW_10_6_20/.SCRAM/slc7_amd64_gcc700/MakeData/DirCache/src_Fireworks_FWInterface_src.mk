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
