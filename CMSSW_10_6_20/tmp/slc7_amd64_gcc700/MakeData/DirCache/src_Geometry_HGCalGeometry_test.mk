ifeq ($(strip $(testGeometryHCCalGeometry)),)
testGeometryHCCalGeometry := self/src/Geometry/HGCalGeometry/test
testGeometryHCCalGeometry_files := $(patsubst src/Geometry/HGCalGeometry/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Geometry/HGCalGeometry/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HGCalGeometry/test/$(file). Please fix src/Geometry/HGCalGeometry/test/BuildFile.))))
testGeometryHCCalGeometry_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HGCalGeometry/test/BuildFile
testGeometryHCCalGeometry_LOC_USE := self  DataFormats/HcalDetId DataFormats/ForwardDetId DataFormats/GeometryVector Geometry/HcalTowerAlgo Geometry/HGCalGeometry Geometry/Records MagneticField/Engine MagneticField/Records TrackingTools/GeomPropagators TrackingTools/TrackAssociator CoralBase
testGeometryHCCalGeometry_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testGeometryHCCalGeometry,testGeometryHCCalGeometry,$(SCRAMSTORENAME_LIB),src/Geometry/HGCalGeometry/test))
testGeometryHCCalGeometry_PACKAGE := self/src/Geometry/HGCalGeometry/test
ALL_PRODS += testGeometryHCCalGeometry
testGeometryHCCalGeometry_INIT_FUNC        += $$(eval $$(call Library,testGeometryHCCalGeometry,src/Geometry/HGCalGeometry/test,src_Geometry_HGCalGeometry_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testGeometryHCCalGeometry_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testGeometryHCCalGeometry,src/Geometry/HGCalGeometry/test))
endif
ALL_COMMONRULES += src_Geometry_HGCalGeometry_test
src_Geometry_HGCalGeometry_test_parent := Geometry/HGCalGeometry
src_Geometry_HGCalGeometry_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HGCalGeometry_test,src/Geometry/HGCalGeometry/test,TEST))
