ifeq ($(strip $(PyJHUGenMELAMELA)),)
PyJHUGenMELAMELA := self/src/JHUGenMELA/MELA/python
src_JHUGenMELA_MELA_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JHUGenMELA/MELA/python)
PyJHUGenMELAMELA_files := $(patsubst src/JHUGenMELA/MELA/python/%,%,$(wildcard $(foreach dir,src/JHUGenMELA/MELA/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJHUGenMELAMELA_LOC_USE := self  
PyJHUGenMELAMELA_PACKAGE := self/src/JHUGenMELA/MELA/python
ALL_PRODS += PyJHUGenMELAMELA
PyJHUGenMELAMELA_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJHUGenMELAMELA,src/JHUGenMELA/MELA/python,src_JHUGenMELA_MELA_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJHUGenMELAMELA,src/JHUGenMELA/MELA/python))
endif
ALL_COMMONRULES += src_JHUGenMELA_MELA_python
src_JHUGenMELA_MELA_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JHUGenMELA_MELA_python,src/JHUGenMELA/MELA/python,PYTHON))
