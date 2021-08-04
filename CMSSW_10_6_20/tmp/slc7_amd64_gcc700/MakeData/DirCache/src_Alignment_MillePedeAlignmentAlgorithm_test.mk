ifeq ($(strip $(test_CreateFileLists)),)
test_CreateFileLists := self/src/Alignment/MillePedeAlignmentAlgorithm/test
test_CreateFileLists_files := 1
test_CreateFileLists_TEST_RUNNER_CMD :=  mps_create_file_lists.py --test-mode --force -i /OVERRIDDEN/IN/TESTMODE -o ${LOCALTOP}/tmp/mps_create_file_lists -n 200000 --iov 42 --iov 174
test_CreateFileLists_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/MillePedeAlignmentAlgorithm/test/BuildFile
test_CreateFileLists_LOC_USE := self  
test_CreateFileLists_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/test
ALL_PRODS += test_CreateFileLists
test_CreateFileLists_INIT_FUNC        += $$(eval $$(call Binary,test_CreateFileLists,src/Alignment/MillePedeAlignmentAlgorithm/test,src_Alignment_MillePedeAlignmentAlgorithm_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
test_CreateFileLists_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,test_CreateFileLists,src/Alignment/MillePedeAlignmentAlgorithm/test))
endif
ifeq ($(strip $(test_PrepareInputDb)),)
test_PrepareInputDb := self/src/Alignment/MillePedeAlignmentAlgorithm/test
test_PrepareInputDb_files := 1
test_PrepareInputDb_TEST_RUNNER_CMD :=  mps_prepare_input_db.py -g auto:run2_data -r 1 -o ${LOCALTOP}/tmp/test_input.db
test_PrepareInputDb_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/MillePedeAlignmentAlgorithm/test/BuildFile
test_PrepareInputDb_LOC_USE := self  
test_PrepareInputDb_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/test
ALL_PRODS += test_PrepareInputDb
test_PrepareInputDb_INIT_FUNC        += $$(eval $$(call Binary,test_PrepareInputDb,src/Alignment/MillePedeAlignmentAlgorithm/test,src_Alignment_MillePedeAlignmentAlgorithm_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
test_PrepareInputDb_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,test_PrepareInputDb,src/Alignment/MillePedeAlignmentAlgorithm/test))
endif
ifeq ($(strip $(test_MpsWorkFlow)),)
test_MpsWorkFlow := self/src/Alignment/MillePedeAlignmentAlgorithm/test
test_MpsWorkFlow_files := 1
test_MpsWorkFlow_TEST_RUNNER_CMD :=  test_mps-workflow.sh
test_MpsWorkFlow_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/MillePedeAlignmentAlgorithm/test/BuildFile
test_MpsWorkFlow_LOC_USE := self  
test_MpsWorkFlow_PACKAGE := self/src/Alignment/MillePedeAlignmentAlgorithm/test
ALL_PRODS += test_MpsWorkFlow
test_MpsWorkFlow_INIT_FUNC        += $$(eval $$(call Binary,test_MpsWorkFlow,src/Alignment/MillePedeAlignmentAlgorithm/test,src_Alignment_MillePedeAlignmentAlgorithm_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
test_MpsWorkFlow_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,test_MpsWorkFlow,src/Alignment/MillePedeAlignmentAlgorithm/test))
endif
ALL_COMMONRULES += src_Alignment_MillePedeAlignmentAlgorithm_test
src_Alignment_MillePedeAlignmentAlgorithm_test_parent := Alignment/MillePedeAlignmentAlgorithm
src_Alignment_MillePedeAlignmentAlgorithm_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_MillePedeAlignmentAlgorithm_test,src/Alignment/MillePedeAlignmentAlgorithm/test,TEST))
