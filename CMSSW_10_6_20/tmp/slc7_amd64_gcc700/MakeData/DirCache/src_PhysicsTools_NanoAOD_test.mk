ifeq ($(strip $(runtestPhysicsToolsNanoAOD)),)
runtestPhysicsToolsNanoAOD := self/src/PhysicsTools/NanoAOD/test
runtestPhysicsToolsNanoAOD_files := $(patsubst src/PhysicsTools/NanoAOD/test/%,%,$(foreach file,runtestPhysicsToolsNanoAOD.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/NanoAOD/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/NanoAOD/test/$(file). Please fix src/PhysicsTools/NanoAOD/test/BuildFile.))))
runtestPhysicsToolsNanoAOD_TEST_RUNNER_CMD :=  runtestPhysicsToolsNanoAOD  /bin/bash PhysicsTools/NanoAOD/test runtests.sh
runtestPhysicsToolsNanoAOD_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NanoAOD/test/BuildFile
runtestPhysicsToolsNanoAOD_LOC_USE := self  FWCore/Utilities
runtestPhysicsToolsNanoAOD_PACKAGE := self/src/PhysicsTools/NanoAOD/test
ALL_PRODS += runtestPhysicsToolsNanoAOD
runtestPhysicsToolsNanoAOD_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/test,src_PhysicsTools_NanoAOD_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
runtestPhysicsToolsNanoAOD_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/test))
endif
ALL_COMMONRULES += src_PhysicsTools_NanoAOD_test
src_PhysicsTools_NanoAOD_test_parent := PhysicsTools/NanoAOD
src_PhysicsTools_NanoAOD_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NanoAOD_test,src/PhysicsTools/NanoAOD/test,TEST))
