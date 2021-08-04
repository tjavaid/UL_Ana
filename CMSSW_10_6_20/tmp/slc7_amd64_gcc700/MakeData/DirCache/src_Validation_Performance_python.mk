ifeq ($(strip $(PyValidationPerformance)),)
PyValidationPerformance := self/src/Validation/Performance/python
src_Validation_Performance_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Validation/Performance/python)
PyValidationPerformance_files := $(patsubst src/Validation/Performance/python/%,%,$(wildcard $(foreach dir,src/Validation/Performance/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyValidationPerformance_LOC_USE := self  
PyValidationPerformance_PACKAGE := self/src/Validation/Performance/python
ALL_PRODS += PyValidationPerformance
PyValidationPerformance_INIT_FUNC        += $$(eval $$(call PythonProduct,PyValidationPerformance,src/Validation/Performance/python,src_Validation_Performance_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyValidationPerformance,src/Validation/Performance/python))
endif
ALL_COMMONRULES += src_Validation_Performance_python
src_Validation_Performance_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_Performance_python,src/Validation/Performance/python,PYTHON))
