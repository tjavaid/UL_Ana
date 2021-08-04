ifeq ($(strip $(PyRecoEgammaElectronIdentification)),)
PyRecoEgammaElectronIdentification := self/src/RecoEgamma/ElectronIdentification/python
src_RecoEgamma_ElectronIdentification_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEgamma/ElectronIdentification/python)
PyRecoEgammaElectronIdentification_files := $(patsubst src/RecoEgamma/ElectronIdentification/python/%,%,$(wildcard $(foreach dir,src/RecoEgamma/ElectronIdentification/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEgammaElectronIdentification_LOC_USE := self  
PyRecoEgammaElectronIdentification_PACKAGE := self/src/RecoEgamma/ElectronIdentification/python
ALL_PRODS += PyRecoEgammaElectronIdentification
PyRecoEgammaElectronIdentification_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/python,src_RecoEgamma_ElectronIdentification_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/python))
endif
ALL_COMMONRULES += src_RecoEgamma_ElectronIdentification_python
src_RecoEgamma_ElectronIdentification_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_ElectronIdentification_python,src/RecoEgamma/ElectronIdentification/python,PYTHON))
