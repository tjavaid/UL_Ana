ifeq ($(strip $(PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer)),)
PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer := self/src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python)
PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer_files := $(patsubst src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer_LOC_USE := self  
PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer_PACKAGE := self/src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python
ALL_PRODS += PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer
PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python,src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyUFHZZAnalysisRun2SlimmedElectronMvaIDProducer,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_python
src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_python,src/UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer/python,PYTHON))
