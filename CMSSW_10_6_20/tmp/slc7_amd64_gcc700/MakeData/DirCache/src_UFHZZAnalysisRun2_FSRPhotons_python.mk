ifeq ($(strip $(PyUFHZZAnalysisRun2FSRPhotons)),)
PyUFHZZAnalysisRun2FSRPhotons := self/src/UFHZZAnalysisRun2/FSRPhotons/python
src_UFHZZAnalysisRun2_FSRPhotons_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/UFHZZAnalysisRun2/FSRPhotons/python)
PyUFHZZAnalysisRun2FSRPhotons_files := $(patsubst src/UFHZZAnalysisRun2/FSRPhotons/python/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/FSRPhotons/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyUFHZZAnalysisRun2FSRPhotons_LOC_USE := self  
PyUFHZZAnalysisRun2FSRPhotons_PACKAGE := self/src/UFHZZAnalysisRun2/FSRPhotons/python
ALL_PRODS += PyUFHZZAnalysisRun2FSRPhotons
PyUFHZZAnalysisRun2FSRPhotons_INIT_FUNC        += $$(eval $$(call PythonProduct,PyUFHZZAnalysisRun2FSRPhotons,src/UFHZZAnalysisRun2/FSRPhotons/python,src_UFHZZAnalysisRun2_FSRPhotons_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyUFHZZAnalysisRun2FSRPhotons,src/UFHZZAnalysisRun2/FSRPhotons/python))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_FSRPhotons_python
src_UFHZZAnalysisRun2_FSRPhotons_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_FSRPhotons_python,src/UFHZZAnalysisRun2/FSRPhotons/python,PYTHON))
