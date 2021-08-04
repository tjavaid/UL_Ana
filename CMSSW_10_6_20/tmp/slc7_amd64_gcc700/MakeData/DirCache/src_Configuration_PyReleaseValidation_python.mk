ifeq ($(strip $(PyConfigurationPyReleaseValidation)),)
PyConfigurationPyReleaseValidation := self/src/Configuration/PyReleaseValidation/python
src_Configuration_PyReleaseValidation_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/PyReleaseValidation/python)
PyConfigurationPyReleaseValidation_files := $(patsubst src/Configuration/PyReleaseValidation/python/%,%,$(wildcard $(foreach dir,src/Configuration/PyReleaseValidation/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationPyReleaseValidation_LOC_USE := self  
PyConfigurationPyReleaseValidation_PACKAGE := self/src/Configuration/PyReleaseValidation/python
ALL_PRODS += PyConfigurationPyReleaseValidation
PyConfigurationPyReleaseValidation_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationPyReleaseValidation,src/Configuration/PyReleaseValidation/python,src_Configuration_PyReleaseValidation_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationPyReleaseValidation,src/Configuration/PyReleaseValidation/python))
endif
ALL_COMMONRULES += src_Configuration_PyReleaseValidation_python
src_Configuration_PyReleaseValidation_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_PyReleaseValidation_python,src/Configuration/PyReleaseValidation/python,PYTHON))
