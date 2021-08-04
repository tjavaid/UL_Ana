ifeq ($(strip $(PyCondCoreESSources)),)
PyCondCoreESSources := self/src/CondCore/ESSources/python
src_CondCore_ESSources_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CondCore/ESSources/python)
PyCondCoreESSources_files := $(patsubst src/CondCore/ESSources/python/%,%,$(wildcard $(foreach dir,src/CondCore/ESSources/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCondCoreESSources_LOC_USE := self  
PyCondCoreESSources_PACKAGE := self/src/CondCore/ESSources/python
ALL_PRODS += PyCondCoreESSources
PyCondCoreESSources_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCondCoreESSources,src/CondCore/ESSources/python,src_CondCore_ESSources_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCondCoreESSources,src/CondCore/ESSources/python))
endif
ALL_COMMONRULES += src_CondCore_ESSources_python
src_CondCore_ESSources_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondCore_ESSources_python,src/CondCore/ESSources/python,PYTHON))
