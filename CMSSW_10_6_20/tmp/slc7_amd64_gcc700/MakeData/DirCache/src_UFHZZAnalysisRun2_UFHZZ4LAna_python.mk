ifeq ($(strip $(PyUFHZZAnalysisRun2UFHZZ4LAna)),)
PyUFHZZAnalysisRun2UFHZZ4LAna := self/src/UFHZZAnalysisRun2/UFHZZ4LAna/python
src_UFHZZAnalysisRun2_UFHZZ4LAna_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/UFHZZAnalysisRun2/UFHZZ4LAna/python)
PyUFHZZAnalysisRun2UFHZZ4LAna_files := $(patsubst src/UFHZZAnalysisRun2/UFHZZ4LAna/python/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/UFHZZ4LAna/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyUFHZZAnalysisRun2UFHZZ4LAna_LOC_USE := self  
PyUFHZZAnalysisRun2UFHZZ4LAna_PACKAGE := self/src/UFHZZAnalysisRun2/UFHZZ4LAna/python
ALL_PRODS += PyUFHZZAnalysisRun2UFHZZ4LAna
PyUFHZZAnalysisRun2UFHZZ4LAna_INIT_FUNC        += $$(eval $$(call PythonProduct,PyUFHZZAnalysisRun2UFHZZ4LAna,src/UFHZZAnalysisRun2/UFHZZ4LAna/python,src_UFHZZAnalysisRun2_UFHZZ4LAna_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyUFHZZAnalysisRun2UFHZZ4LAna,src/UFHZZAnalysisRun2/UFHZZ4LAna/python))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_UFHZZ4LAna_python
src_UFHZZAnalysisRun2_UFHZZ4LAna_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_UFHZZ4LAna_python,src/UFHZZAnalysisRun2/UFHZZ4LAna/python,PYTHON))
