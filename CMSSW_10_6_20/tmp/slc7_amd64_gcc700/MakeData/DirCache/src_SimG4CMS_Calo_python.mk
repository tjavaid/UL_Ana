ifeq ($(strip $(PySimG4CMSCalo)),)
PySimG4CMSCalo := self/src/SimG4CMS/Calo/python
src_SimG4CMS_Calo_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SimG4CMS/Calo/python)
PySimG4CMSCalo_files := $(patsubst src/SimG4CMS/Calo/python/%,%,$(wildcard $(foreach dir,src/SimG4CMS/Calo/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySimG4CMSCalo_LOC_USE := self  
PySimG4CMSCalo_PACKAGE := self/src/SimG4CMS/Calo/python
ALL_PRODS += PySimG4CMSCalo
PySimG4CMSCalo_INIT_FUNC        += $$(eval $$(call PythonProduct,PySimG4CMSCalo,src/SimG4CMS/Calo/python,src_SimG4CMS_Calo_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PySimG4CMSCalo,src/SimG4CMS/Calo/python))
endif
ALL_COMMONRULES += src_SimG4CMS_Calo_python
src_SimG4CMS_Calo_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Calo_python,src/SimG4CMS/Calo/python,PYTHON))
