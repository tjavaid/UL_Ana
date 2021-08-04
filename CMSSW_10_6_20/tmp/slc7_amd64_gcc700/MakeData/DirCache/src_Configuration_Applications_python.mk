ifeq ($(strip $(PyConfigurationApplications)),)
PyConfigurationApplications := self/src/Configuration/Applications/python
src_Configuration_Applications_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/Applications/python)
PyConfigurationApplications_files := $(patsubst src/Configuration/Applications/python/%,%,$(wildcard $(foreach dir,src/Configuration/Applications/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationApplications_LOC_USE := self  
PyConfigurationApplications_PACKAGE := self/src/Configuration/Applications/python
ALL_PRODS += PyConfigurationApplications
PyConfigurationApplications_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationApplications,src/Configuration/Applications/python,src_Configuration_Applications_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationApplications,src/Configuration/Applications/python))
endif
ALL_COMMONRULES += src_Configuration_Applications_python
src_Configuration_Applications_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Applications_python,src/Configuration/Applications/python,PYTHON))
