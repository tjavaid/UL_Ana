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
