ifeq ($(strip $(PyCommonToolsPileupAlgos)),)
PyCommonToolsPileupAlgos := self/src/CommonTools/PileupAlgos/python
src_CommonTools_PileupAlgos_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/PileupAlgos/python)
PyCommonToolsPileupAlgos_files := $(patsubst src/CommonTools/PileupAlgos/python/%,%,$(wildcard $(foreach dir,src/CommonTools/PileupAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCommonToolsPileupAlgos_LOC_USE := self  
PyCommonToolsPileupAlgos_PACKAGE := self/src/CommonTools/PileupAlgos/python
ALL_PRODS += PyCommonToolsPileupAlgos
PyCommonToolsPileupAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsPileupAlgos,src/CommonTools/PileupAlgos/python,src_CommonTools_PileupAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsPileupAlgos,src/CommonTools/PileupAlgos/python))
endif
ALL_COMMONRULES += src_CommonTools_PileupAlgos_python
src_CommonTools_PileupAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_PileupAlgos_python,src/CommonTools/PileupAlgos/python,PYTHON))
