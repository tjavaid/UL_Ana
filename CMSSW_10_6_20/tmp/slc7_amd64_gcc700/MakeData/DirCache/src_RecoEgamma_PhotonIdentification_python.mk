ifeq ($(strip $(PyRecoEgammaPhotonIdentification)),)
PyRecoEgammaPhotonIdentification := self/src/RecoEgamma/PhotonIdentification/python
src_RecoEgamma_PhotonIdentification_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEgamma/PhotonIdentification/python)
PyRecoEgammaPhotonIdentification_files := $(patsubst src/RecoEgamma/PhotonIdentification/python/%,%,$(wildcard $(foreach dir,src/RecoEgamma/PhotonIdentification/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEgammaPhotonIdentification_LOC_USE := self  
PyRecoEgammaPhotonIdentification_PACKAGE := self/src/RecoEgamma/PhotonIdentification/python
ALL_PRODS += PyRecoEgammaPhotonIdentification
PyRecoEgammaPhotonIdentification_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/python,src_RecoEgamma_PhotonIdentification_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/python))
endif
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_python
src_RecoEgamma_PhotonIdentification_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_python,src/RecoEgamma/PhotonIdentification/python,PYTHON))
