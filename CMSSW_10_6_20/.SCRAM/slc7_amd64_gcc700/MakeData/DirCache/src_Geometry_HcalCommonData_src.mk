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
