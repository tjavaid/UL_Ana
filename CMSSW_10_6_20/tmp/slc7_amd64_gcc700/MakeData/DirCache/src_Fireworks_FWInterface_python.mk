ifeq ($(strip $(PyFireworksFWInterface)),)
PyFireworksFWInterface := self/src/Fireworks/FWInterface/python
src_Fireworks_FWInterface_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Fireworks/FWInterface/python)
PyFireworksFWInterface_files := $(patsubst src/Fireworks/FWInterface/python/%,%,$(wildcard $(foreach dir,src/Fireworks/FWInterface/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFireworksFWInterface_LOC_USE := self  
PyFireworksFWInterface_PACKAGE := self/src/Fireworks/FWInterface/python
ALL_PRODS += PyFireworksFWInterface
PyFireworksFWInterface_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFireworksFWInterface,src/Fireworks/FWInterface/python,src_Fireworks_FWInterface_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyFireworksFWInterface,src/Fireworks/FWInterface/python))
endif
ALL_COMMONRULES += src_Fireworks_FWInterface_python
src_Fireworks_FWInterface_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Fireworks_FWInterface_python,src/Fireworks/FWInterface/python,PYTHON))
