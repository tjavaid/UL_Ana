ifeq ($(strip $(PyConfigurationEras)),)
PyConfigurationEras := self/src/Configuration/Eras/python
src_Configuration_Eras_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/Eras/python)
PyConfigurationEras_files := $(patsubst src/Configuration/Eras/python/%,%,$(wildcard $(foreach dir,src/Configuration/Eras/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationEras_LOC_USE := self  
PyConfigurationEras_PACKAGE := self/src/Configuration/Eras/python
ALL_PRODS += PyConfigurationEras
PyConfigurationEras_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationEras,src/Configuration/Eras/python,src_Configuration_Eras_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationEras,src/Configuration/Eras/python))
endif
ALL_COMMONRULES += src_Configuration_Eras_python
src_Configuration_Eras_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Eras_python,src/Configuration/Eras/python,PYTHON))
