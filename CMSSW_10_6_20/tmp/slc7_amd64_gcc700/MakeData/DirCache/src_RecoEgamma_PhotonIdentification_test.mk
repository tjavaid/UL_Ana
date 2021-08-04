ifeq ($(strip $(runtestRecoEgammaPhotonIdentification)),)
runtestRecoEgammaPhotonIdentification := self/src/RecoEgamma/PhotonIdentification/test
runtestRecoEgammaPhotonIdentification_files := $(patsubst src/RecoEgamma/PhotonIdentification/test/%,%,$(foreach file,runtestRecoEgammaPhotonIdentification.cpp,$(eval xfile:=$(wildcard src/RecoEgamma/PhotonIdentification/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/PhotonIdentification/test/$(file). Please fix src/RecoEgamma/PhotonIdentification/test/BuildFile.))))
runtestRecoEgammaPhotonIdentification_TEST_RUNNER_CMD :=  runtestRecoEgammaPhotonIdentification  /bin/bash RecoEgamma/PhotonIdentification/test runtests.sh
runtestRecoEgammaPhotonIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/PhotonIdentification/test/BuildFile
runtestRecoEgammaPhotonIdentification_LOC_USE := self  FWCore/Utilities
runtestRecoEgammaPhotonIdentification_PACKAGE := self/src/RecoEgamma/PhotonIdentification/test
ALL_PRODS += runtestRecoEgammaPhotonIdentification
runtestRecoEgammaPhotonIdentification_INIT_FUNC        += $$(eval $$(call Binary,runtestRecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/test,src_RecoEgamma_PhotonIdentification_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
runtestRecoEgammaPhotonIdentification_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,runtestRecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/test))
endif
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_test
src_RecoEgamma_PhotonIdentification_test_parent := RecoEgamma/PhotonIdentification
src_RecoEgamma_PhotonIdentification_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_test,src/RecoEgamma/PhotonIdentification/test,TEST))
