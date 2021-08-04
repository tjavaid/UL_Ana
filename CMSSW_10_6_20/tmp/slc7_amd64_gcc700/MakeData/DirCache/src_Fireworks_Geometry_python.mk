ifeq ($(strip $(PyFireworksGeometry)),)
PyFireworksGeometry := self/src/Fireworks/Geometry/python
src_Fireworks_Geometry_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Fireworks/Geometry/python)
PyFireworksGeometry_files := $(patsubst src/Fireworks/Geometry/python/%,%,$(wildcard $(foreach dir,src/Fireworks/Geometry/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFireworksGeometry_LOC_USE := self  
PyFireworksGeometry_PACKAGE := self/src/Fireworks/Geometry/python
ALL_PRODS += PyFireworksGeometry
PyFireworksGeometry_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFireworksGeometry,src/Fireworks/Geometry/python,src_Fireworks_Geometry_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyFireworksGeometry,src/Fireworks/Geometry/python))
endif
ALL_COMMONRULES += src_Fireworks_Geometry_python
src_Fireworks_Geometry_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Fireworks_Geometry_python,src/Fireworks/Geometry/python,PYTHON))
