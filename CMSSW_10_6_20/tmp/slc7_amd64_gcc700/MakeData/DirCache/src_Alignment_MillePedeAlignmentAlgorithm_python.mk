ifeq ($(strip $(PyAlignmentMillePedeAlignmentAlgorithm)),)
PyAlignmentMillePedeAlignmentAlgorithm := self/src/Alignment/MillePedeAlignmentAlgorithm/python
src_Alignment_MillePedeAlignmentAlgorithm_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Alignment/MillePedeAlignmentAlgorithm/python)
PyAlignmentMillePedeAlignmentAlgorithm_files := $(patsubst src/Alignment/MillePedeAlignmentAlgorithm/python/%,%,$(wildcard $(foreach dir,src/Alignment/MillePedeAlignmentAlgorithm/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyAlignmentMillePedeAlignmentAlgorithm_LOC_USE := self  
PyAlignmentMillePedeAlignmentAlgorithm_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/python
ALL_PRODS += PyAlignmentMillePedeAlignmentAlgorithm
PyAlignmentMillePedeAlignmentAlgorithm_INIT_FUNC        += $$(eval $$(call PythonProduct,PyAlignmentMillePedeAlignmentAlgorithm,src/Alignment/MillePedeAlignmentAlgorithm/python,src_Alignment_MillePedeAlignmentAlgorithm_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyAlignmentMillePedeAlignmentAlgorithm,src/Alignment/MillePedeAlignmentAlgorithm/python))
endif
ALL_COMMONRULES += src_Alignment_MillePedeAlignmentAlgorithm_python
src_Alignment_MillePedeAlignmentAlgorithm_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_MillePedeAlignmentAlgorithm_python,src/Alignment/MillePedeAlignmentAlgorithm/python,PYTHON))
