ifeq ($(strip $(PyDQMCastorMonitor)),)
PyDQMCastorMonitor := self/src/DQM/CastorMonitor/python
src_DQM_CastorMonitor_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DQM/CastorMonitor/python)
PyDQMCastorMonitor_files := $(patsubst src/DQM/CastorMonitor/python/%,%,$(wildcard $(foreach dir,src/DQM/CastorMonitor/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDQMCastorMonitor_LOC_USE := self  
PyDQMCastorMonitor_PACKAGE := self/src/DQM/CastorMonitor/python
ALL_PRODS += PyDQMCastorMonitor
PyDQMCastorMonitor_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDQMCastorMonitor,src/DQM/CastorMonitor/python,src_DQM_CastorMonitor_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDQMCastorMonitor,src/DQM/CastorMonitor/python))
endif
ALL_COMMONRULES += src_DQM_CastorMonitor_python
src_DQM_CastorMonitor_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_CastorMonitor_python,src/DQM/CastorMonitor/python,PYTHON))
