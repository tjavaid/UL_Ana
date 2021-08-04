ifeq ($(strip $(PyGeometryHcalCommonData)),)
PyGeometryHcalCommonData := self/src/Geometry/HcalCommonData/python
src_Geometry_HcalCommonData_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Geometry/HcalCommonData/python)
PyGeometryHcalCommonData_files := $(patsubst src/Geometry/HcalCommonData/python/%,%,$(wildcard $(foreach dir,src/Geometry/HcalCommonData/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeometryHcalCommonData_LOC_USE := self  
PyGeometryHcalCommonData_PACKAGE := self/src/Geometry/HcalCommonData/python
ALL_PRODS += PyGeometryHcalCommonData
PyGeometryHcalCommonData_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeometryHcalCommonData,src/Geometry/HcalCommonData/python,src_Geometry_HcalCommonData_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeometryHcalCommonData,src/Geometry/HcalCommonData/python))
endif
ALL_COMMONRULES += src_Geometry_HcalCommonData_python
src_Geometry_HcalCommonData_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HcalCommonData_python,src/Geometry/HcalCommonData/python,PYTHON))
