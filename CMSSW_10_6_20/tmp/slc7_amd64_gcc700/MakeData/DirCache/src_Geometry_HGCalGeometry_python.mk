ifeq ($(strip $(PyGeometryHGCalGeometry)),)
PyGeometryHGCalGeometry := self/src/Geometry/HGCalGeometry/python
src_Geometry_HGCalGeometry_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Geometry/HGCalGeometry/python)
PyGeometryHGCalGeometry_files := $(patsubst src/Geometry/HGCalGeometry/python/%,%,$(wildcard $(foreach dir,src/Geometry/HGCalGeometry/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeometryHGCalGeometry_LOC_USE := self  
PyGeometryHGCalGeometry_PACKAGE := self/src/Geometry/HGCalGeometry/python
ALL_PRODS += PyGeometryHGCalGeometry
PyGeometryHGCalGeometry_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeometryHGCalGeometry,src/Geometry/HGCalGeometry/python,src_Geometry_HGCalGeometry_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeometryHGCalGeometry,src/Geometry/HGCalGeometry/python))
endif
ALL_COMMONRULES += src_Geometry_HGCalGeometry_python
src_Geometry_HGCalGeometry_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HGCalGeometry_python,src/Geometry/HGCalGeometry/python,PYTHON))
