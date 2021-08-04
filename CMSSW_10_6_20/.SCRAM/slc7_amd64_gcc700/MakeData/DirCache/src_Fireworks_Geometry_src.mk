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
