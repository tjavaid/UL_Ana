ALL_SUBSYSTEMS+=Alignment
subdirs_src_Alignment = src_Alignment_MillePedeAlignmentAlgorithm
ALL_PACKAGES += Alignment/MillePedeAlignmentAlgorithm
subdirs_src_Alignment_MillePedeAlignmentAlgorithm := src_Alignment_MillePedeAlignmentAlgorithm_doc src_Alignment_MillePedeAlignmentAlgorithm_interface src_Alignment_MillePedeAlignmentAlgorithm_plugins src_Alignment_MillePedeAlignmentAlgorithm_python src_Alignment_MillePedeAlignmentAlgorithm_scripts src_Alignment_MillePedeAlignmentAlgorithm_src src_Alignment_MillePedeAlignmentAlgorithm_templates src_Alignment_MillePedeAlignmentAlgorithm_test
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
src_Alignment_MillePedeAlignmentAlgorithm_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Alignment/MillePedeAlignmentAlgorithm/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Alignment_MillePedeAlignmentAlgorithm_scripts,src/Alignment/MillePedeAlignmentAlgorithm/scripts,$(SCRAMSTORENAME_BIN),*))
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
ALL_SUBSYSTEMS+=CommonTools
subdirs_src_CommonTools = src_CommonTools_PileupAlgos
ALL_PACKAGES += CommonTools/PileupAlgos
subdirs_src_CommonTools_PileupAlgos := src_CommonTools_PileupAlgos_plugins src_CommonTools_PileupAlgos_python src_CommonTools_PileupAlgos_src src_CommonTools_PileupAlgos_test
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
ALL_COMMONRULES += src_CommonTools_PileupAlgos_test
src_CommonTools_PileupAlgos_test_parent := CommonTools/PileupAlgos
src_CommonTools_PileupAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_PileupAlgos_test,src/CommonTools/PileupAlgos/test,TEST))
ALL_SUBSYSTEMS+=CondCore
subdirs_src_CondCore = src_CondCore_ESSources
ALL_PACKAGES += CondCore/ESSources
subdirs_src_CondCore_ESSources := src_CondCore_ESSources_bin src_CondCore_ESSources_doc src_CondCore_ESSources_interface src_CondCore_ESSources_plugins src_CondCore_ESSources_python src_CondCore_ESSources_src src_CondCore_ESSources_test
ALL_COMMONRULES += src_CondCore_ESSources_bin
src_CondCore_ESSources_bin_parent := CondCore/ESSources
src_CondCore_ESSources_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondCore_ESSources_bin,src/CondCore/ESSources/bin,BINARY))
ifeq ($(strip $(PyCondCoreESSources)),)
PyCondCoreESSources := self/src/CondCore/ESSources/python
src_CondCore_ESSources_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CondCore/ESSources/python)
PyCondCoreESSources_files := $(patsubst src/CondCore/ESSources/python/%,%,$(wildcard $(foreach dir,src/CondCore/ESSources/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCondCoreESSources_LOC_USE := self  
PyCondCoreESSources_PACKAGE := self/src/CondCore/ESSources/python
ALL_PRODS += PyCondCoreESSources
PyCondCoreESSources_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCondCoreESSources,src/CondCore/ESSources/python,src_CondCore_ESSources_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCondCoreESSources,src/CondCore/ESSources/python))
endif
ALL_COMMONRULES += src_CondCore_ESSources_python
src_CondCore_ESSources_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondCore_ESSources_python,src/CondCore/ESSources/python,PYTHON))
ifeq ($(strip $(PedestalsByLabelAnalyzer)),)
PedestalsByLabelAnalyzer := self/src/CondCore/ESSources/test
PedestalsByLabelAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,stubs/PedestalsByLabelAnalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
PedestalsByLabelAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
PedestalsByLabelAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
PedestalsByLabelAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PedestalsByLabelAnalyzer,PedestalsByLabelAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
PedestalsByLabelAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += PedestalsByLabelAnalyzer
PedestalsByLabelAnalyzer_INIT_FUNC        += $$(eval $$(call Library,PedestalsByLabelAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PedestalsByLabelAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PedestalsByLabelAnalyzer,src/CondCore/ESSources/test))
endif
ifeq ($(strip $(PedestalsAnalyzer)),)
PedestalsAnalyzer := self/src/CondCore/ESSources/test
PedestalsAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,stubs/PedestalsAnalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
PedestalsAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
PedestalsAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
PedestalsAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PedestalsAnalyzer,PedestalsAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
PedestalsAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += PedestalsAnalyzer
PedestalsAnalyzer_INIT_FUNC        += $$(eval $$(call Library,PedestalsAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PedestalsAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PedestalsAnalyzer,src/CondCore/ESSources/test))
endif
ifeq ($(strip $(NoisesAnalyzer)),)
NoisesAnalyzer := self/src/CondCore/ESSources/test
NoisesAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,SiStripTest/noiseanalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
NoisesAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
NoisesAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
NoisesAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,NoisesAnalyzer,NoisesAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
NoisesAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += NoisesAnalyzer
NoisesAnalyzer_INIT_FUNC        += $$(eval $$(call Library,NoisesAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
NoisesAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,NoisesAnalyzer,src/CondCore/ESSources/test))
endif
ifeq ($(strip $(ExEfficiencyByLabelAnalyzer)),)
ExEfficiencyByLabelAnalyzer := self/src/CondCore/ESSources/test
ExEfficiencyByLabelAnalyzer_files := $(patsubst src/CondCore/ESSources/test/%,%,$(foreach file,stubs/EfficiencyByLabelAnalyzer.cc,$(eval xfile:=$(wildcard src/CondCore/ESSources/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CondCore/ESSources/test/$(file). Please fix src/CondCore/ESSources/test/BuildFile.))))
ExEfficiencyByLabelAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/test/BuildFile
ExEfficiencyByLabelAnalyzer_LOC_USE := self  FWCore/ParameterSet CondFormats/Calibration FWCore/Framework CondFormats/DataRecord
ExEfficiencyByLabelAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ExEfficiencyByLabelAnalyzer,ExEfficiencyByLabelAnalyzer,$(SCRAMSTORENAME_LIB),src/CondCore/ESSources/test))
ExEfficiencyByLabelAnalyzer_PACKAGE := self/src/CondCore/ESSources/test
ALL_PRODS += ExEfficiencyByLabelAnalyzer
ExEfficiencyByLabelAnalyzer_INIT_FUNC        += $$(eval $$(call Library,ExEfficiencyByLabelAnalyzer,src/CondCore/ESSources/test,src_CondCore_ESSources_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
ExEfficiencyByLabelAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,ExEfficiencyByLabelAnalyzer,src/CondCore/ESSources/test))
endif
ALL_COMMONRULES += src_CondCore_ESSources_test
src_CondCore_ESSources_test_parent := CondCore/ESSources
src_CondCore_ESSources_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondCore_ESSources_test,src/CondCore/ESSources/test,TEST))
ALL_SUBSYSTEMS+=Configuration
subdirs_src_Configuration = src_Configuration_AlCa src_Configuration_Eras src_Configuration_PyReleaseValidation src_Configuration_StandardSequences src_Configuration_Applications
ALL_PACKAGES += Configuration/AlCa
subdirs_src_Configuration_AlCa := src_Configuration_AlCa_python
ifeq ($(strip $(PyConfigurationAlCa)),)
PyConfigurationAlCa := self/src/Configuration/AlCa/python
src_Configuration_AlCa_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/AlCa/python)
PyConfigurationAlCa_files := $(patsubst src/Configuration/AlCa/python/%,%,$(wildcard $(foreach dir,src/Configuration/AlCa/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationAlCa_LOC_USE := self  
PyConfigurationAlCa_PACKAGE := self/src/Configuration/AlCa/python
ALL_PRODS += PyConfigurationAlCa
PyConfigurationAlCa_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationAlCa,src/Configuration/AlCa/python,src_Configuration_AlCa_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationAlCa,src/Configuration/AlCa/python))
endif
ALL_COMMONRULES += src_Configuration_AlCa_python
src_Configuration_AlCa_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_AlCa_python,src/Configuration/AlCa/python,PYTHON))
ALL_PACKAGES += Configuration/Applications
subdirs_src_Configuration_Applications := src_Configuration_Applications_python src_Configuration_Applications_scripts
ifeq ($(strip $(PyConfigurationApplications)),)
PyConfigurationApplications := self/src/Configuration/Applications/python
src_Configuration_Applications_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/Applications/python)
PyConfigurationApplications_files := $(patsubst src/Configuration/Applications/python/%,%,$(wildcard $(foreach dir,src/Configuration/Applications/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationApplications_LOC_USE := self  
PyConfigurationApplications_PACKAGE := self/src/Configuration/Applications/python
ALL_PRODS += PyConfigurationApplications
PyConfigurationApplications_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationApplications,src/Configuration/Applications/python,src_Configuration_Applications_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationApplications,src/Configuration/Applications/python))
endif
ALL_COMMONRULES += src_Configuration_Applications_python
src_Configuration_Applications_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Applications_python,src/Configuration/Applications/python,PYTHON))
src_Configuration_Applications_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Configuration/Applications/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Configuration_Applications_scripts,src/Configuration/Applications/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_PACKAGES += Configuration/Eras
subdirs_src_Configuration_Eras := src_Configuration_Eras_python
ifeq ($(strip $(PyConfigurationEras)),)
PyConfigurationEras := self/src/Configuration/Eras/python
src_Configuration_Eras_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/Eras/python)
PyConfigurationEras_files := $(patsubst src/Configuration/Eras/python/%,%,$(wildcard $(foreach dir,src/Configuration/Eras/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationEras_LOC_USE := self  
PyConfigurationEras_PACKAGE := self/src/Configuration/Eras/python
ALL_PRODS += PyConfigurationEras
PyConfigurationEras_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationEras,src/Configuration/Eras/python,src_Configuration_Eras_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationEras,src/Configuration/Eras/python))
endif
ALL_COMMONRULES += src_Configuration_Eras_python
src_Configuration_Eras_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Eras_python,src/Configuration/Eras/python,PYTHON))
ALL_PACKAGES += Configuration/PyReleaseValidation
subdirs_src_Configuration_PyReleaseValidation := src_Configuration_PyReleaseValidation_python src_Configuration_PyReleaseValidation_scripts
ALL_SUBSYSTEMS+=DQM
subdirs_src_DQM = src_DQM_CastorMonitor
ifeq ($(strip $(PyConfigurationPyReleaseValidation)),)
PyConfigurationPyReleaseValidation := self/src/Configuration/PyReleaseValidation/python
src_Configuration_PyReleaseValidation_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/PyReleaseValidation/python)
PyConfigurationPyReleaseValidation_files := $(patsubst src/Configuration/PyReleaseValidation/python/%,%,$(wildcard $(foreach dir,src/Configuration/PyReleaseValidation/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationPyReleaseValidation_LOC_USE := self  
PyConfigurationPyReleaseValidation_PACKAGE := self/src/Configuration/PyReleaseValidation/python
ALL_PRODS += PyConfigurationPyReleaseValidation
PyConfigurationPyReleaseValidation_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationPyReleaseValidation,src/Configuration/PyReleaseValidation/python,src_Configuration_PyReleaseValidation_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationPyReleaseValidation,src/Configuration/PyReleaseValidation/python))
endif
ALL_COMMONRULES += src_Configuration_PyReleaseValidation_python
src_Configuration_PyReleaseValidation_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_PyReleaseValidation_python,src/Configuration/PyReleaseValidation/python,PYTHON))
src_Configuration_PyReleaseValidation_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Configuration/PyReleaseValidation/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Configuration_PyReleaseValidation_scripts,src/Configuration/PyReleaseValidation/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_PACKAGES += Configuration/StandardSequences
subdirs_src_Configuration_StandardSequences := src_Configuration_StandardSequences_python
ifeq ($(strip $(PyConfigurationStandardSequences)),)
PyConfigurationStandardSequences := self/src/Configuration/StandardSequences/python
src_Configuration_StandardSequences_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/StandardSequences/python)
PyConfigurationStandardSequences_files := $(patsubst src/Configuration/StandardSequences/python/%,%,$(wildcard $(foreach dir,src/Configuration/StandardSequences/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationStandardSequences_LOC_USE := self  
PyConfigurationStandardSequences_PACKAGE := self/src/Configuration/StandardSequences/python
ALL_PRODS += PyConfigurationStandardSequences
PyConfigurationStandardSequences_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python,src_Configuration_StandardSequences_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationStandardSequences,src/Configuration/StandardSequences/python))
endif
ALL_COMMONRULES += src_Configuration_StandardSequences_python
src_Configuration_StandardSequences_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_StandardSequences_python,src/Configuration/StandardSequences/python,PYTHON))
ALL_PACKAGES += DQM/CastorMonitor
subdirs_src_DQM_CastorMonitor := src_DQM_CastorMonitor_doc src_DQM_CastorMonitor_python src_DQM_CastorMonitor_src
ifeq ($(strip $(PyDQMCastorMonitor)),)
PyDQMCastorMonitor := self/src/DQM/CastorMonitor/python
src_DQM_CastorMonitor_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DQM/CastorMonitor/python)
PyDQMCastorMonitor_files := $(patsubst src/DQM/CastorMonitor/python/%,%,$(wildcard $(foreach dir,src/DQM/CastorMonitor/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDQMCastorMonitor_LOC_USE := self  
PyDQMCastorMonitor_PACKAGE := self/src/DQM/CastorMonitor/python
ALL_PRODS += PyDQMCastorMonitor
PyDQMCastorMonitor_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDQMCastorMonitor,src/DQM/CastorMonitor/python,src_DQM_CastorMonitor_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDQMCastorMonitor,src/DQM/CastorMonitor/python))
endif
ALL_COMMONRULES += src_DQM_CastorMonitor_python
src_DQM_CastorMonitor_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_CastorMonitor_python,src/DQM/CastorMonitor/python,PYTHON))
ALL_SUBSYSTEMS+=Fireworks
subdirs_src_Fireworks = src_Fireworks_FWInterface src_Fireworks_Geometry
ALL_PACKAGES += Fireworks/FWInterface
subdirs_src_Fireworks_FWInterface := src_Fireworks_FWInterface_plugins src_Fireworks_FWInterface_python src_Fireworks_FWInterface_scripts src_Fireworks_FWInterface_src
ifeq ($(strip $(PyFireworksFWInterface)),)
PyFireworksFWInterface := self/src/Fireworks/FWInterface/python
src_Fireworks_FWInterface_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Fireworks/FWInterface/python)
PyFireworksFWInterface_files := $(patsubst src/Fireworks/FWInterface/python/%,%,$(wildcard $(foreach dir,src/Fireworks/FWInterface/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFireworksFWInterface_LOC_USE := self  
PyFireworksFWInterface_PACKAGE := self/src/Fireworks/FWInterface/python
ALL_PRODS += PyFireworksFWInterface
PyFireworksFWInterface_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFireworksFWInterface,src/Fireworks/FWInterface/python,src_Fireworks_FWInterface_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyFireworksFWInterface,src/Fireworks/FWInterface/python))
endif
ALL_COMMONRULES += src_Fireworks_FWInterface_python
src_Fireworks_FWInterface_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Fireworks_FWInterface_python,src/Fireworks/FWInterface/python,PYTHON))
src_Fireworks_FWInterface_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Fireworks/FWInterface/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Fireworks_FWInterface_scripts,src/Fireworks/FWInterface/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_PACKAGES += Fireworks/Geometry
subdirs_src_Fireworks_Geometry := src_Fireworks_Geometry_doc src_Fireworks_Geometry_interface src_Fireworks_Geometry_macros src_Fireworks_Geometry_plugins src_Fireworks_Geometry_python src_Fireworks_Geometry_src
ifeq ($(strip $(PyFireworksGeometry)),)
PyFireworksGeometry := self/src/Fireworks/Geometry/python
src_Fireworks_Geometry_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Fireworks/Geometry/python)
PyFireworksGeometry_files := $(patsubst src/Fireworks/Geometry/python/%,%,$(wildcard $(foreach dir,src/Fireworks/Geometry/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFireworksGeometry_LOC_USE := self  
PyFireworksGeometry_PACKAGE := self/src/Fireworks/Geometry/python
ALL_PRODS += PyFireworksGeometry
PyFireworksGeometry_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFireworksGeometry,src/Fireworks/Geometry/python,src_Fireworks_Geometry_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyFireworksGeometry,src/Fireworks/Geometry/python))
endif
ALL_COMMONRULES += src_Fireworks_Geometry_python
src_Fireworks_Geometry_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Fireworks_Geometry_python,src/Fireworks/Geometry/python,PYTHON))
ALL_SUBSYSTEMS+=GeneratorInterface
subdirs_src_GeneratorInterface = src_GeneratorInterface_Core src_GeneratorInterface_GenFilters src_GeneratorInterface_RivetInterface
ALL_PACKAGES += GeneratorInterface/Core
subdirs_src_GeneratorInterface_Core := src_GeneratorInterface_Core_bin src_GeneratorInterface_Core_interface src_GeneratorInterface_Core_plugins src_GeneratorInterface_Core_python src_GeneratorInterface_Core_src src_GeneratorInterface_Core_test
ifeq ($(strip $(cmsExternalGenerator)),)
cmsExternalGenerator := self/src/GeneratorInterface/Core/bin
cmsExternalGenerator_files := $(patsubst src/GeneratorInterface/Core/bin/%,%,$(foreach file,externalGenerator.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/Core/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/Core/bin/$(file). Please fix src/GeneratorInterface/Core/bin/BuildFile.))))
cmsExternalGenerator_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Core/bin/BuildFile
cmsExternalGenerator_LOC_USE := self  boost boost_program_options FWCore/TestProcessor FWCore/SharedMemory FWCore/Services FWCore/Utilities SimDataFormats/GeneratorProducts
cmsExternalGenerator_PACKAGE := self/src/GeneratorInterface/Core/bin
ALL_PRODS += cmsExternalGenerator
cmsExternalGenerator_INIT_FUNC        += $$(eval $$(call Binary,cmsExternalGenerator,src/GeneratorInterface/Core/bin,src_GeneratorInterface_Core_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
cmsExternalGenerator_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,cmsExternalGenerator,src/GeneratorInterface/Core/bin))
endif
ALL_COMMONRULES += src_GeneratorInterface_Core_bin
src_GeneratorInterface_Core_bin_parent := GeneratorInterface/Core
src_GeneratorInterface_Core_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Core_bin,src/GeneratorInterface/Core/bin,BINARY))
ifeq ($(strip $(PyGeneratorInterfaceCore)),)
PyGeneratorInterfaceCore := self/src/GeneratorInterface/Core/python
src_GeneratorInterface_Core_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/GeneratorInterface/Core/python)
PyGeneratorInterfaceCore_files := $(patsubst src/GeneratorInterface/Core/python/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/Core/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeneratorInterfaceCore_LOC_USE := self  
PyGeneratorInterfaceCore_PACKAGE := self/src/GeneratorInterface/Core/python
ALL_PRODS += PyGeneratorInterfaceCore
PyGeneratorInterfaceCore_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeneratorInterfaceCore,src/GeneratorInterface/Core/python,src_GeneratorInterface_Core_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeneratorInterfaceCore,src/GeneratorInterface/Core/python))
endif
ALL_COMMONRULES += src_GeneratorInterface_Core_python
src_GeneratorInterface_Core_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Core_python,src/GeneratorInterface/Core/python,PYTHON))
ALL_COMMONRULES += src_GeneratorInterface_Core_test
src_GeneratorInterface_Core_test_parent := GeneratorInterface/Core
src_GeneratorInterface_Core_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Core_test,src/GeneratorInterface/Core/test,TEST))
ALL_PACKAGES += GeneratorInterface/GenFilters
subdirs_src_GeneratorInterface_GenFilters := src_GeneratorInterface_GenFilters_plugins src_GeneratorInterface_GenFilters_python src_GeneratorInterface_GenFilters_src src_GeneratorInterface_GenFilters_test
ifeq ($(strip $(PyGeneratorInterfaceGenFilters)),)
PyGeneratorInterfaceGenFilters := self/src/GeneratorInterface/GenFilters/python
src_GeneratorInterface_GenFilters_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/GeneratorInterface/GenFilters/python)
PyGeneratorInterfaceGenFilters_files := $(patsubst src/GeneratorInterface/GenFilters/python/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/GenFilters/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeneratorInterfaceGenFilters_LOC_USE := self  
PyGeneratorInterfaceGenFilters_PACKAGE := self/src/GeneratorInterface/GenFilters/python
ALL_PRODS += PyGeneratorInterfaceGenFilters
PyGeneratorInterfaceGenFilters_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeneratorInterfaceGenFilters,src/GeneratorInterface/GenFilters/python,src_GeneratorInterface_GenFilters_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeneratorInterfaceGenFilters,src/GeneratorInterface/GenFilters/python))
endif
ALL_COMMONRULES += src_GeneratorInterface_GenFilters_python
src_GeneratorInterface_GenFilters_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_GenFilters_python,src/GeneratorInterface/GenFilters/python,PYTHON))
ALL_COMMONRULES += src_GeneratorInterface_GenFilters_test
src_GeneratorInterface_GenFilters_test_parent := GeneratorInterface/GenFilters
src_GeneratorInterface_GenFilters_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_GenFilters_test,src/GeneratorInterface/GenFilters/test,TEST))
ALL_PACKAGES += GeneratorInterface/RivetInterface
subdirs_src_GeneratorInterface_RivetInterface := src_GeneratorInterface_RivetInterface_interface src_GeneratorInterface_RivetInterface_plugins src_GeneratorInterface_RivetInterface_python src_GeneratorInterface_RivetInterface_src src_GeneratorInterface_RivetInterface_test
ifeq ($(strip $(PyGeneratorInterfaceRivetInterface)),)
PyGeneratorInterfaceRivetInterface := self/src/GeneratorInterface/RivetInterface/python
src_GeneratorInterface_RivetInterface_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/GeneratorInterface/RivetInterface/python)
PyGeneratorInterfaceRivetInterface_files := $(patsubst src/GeneratorInterface/RivetInterface/python/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/RivetInterface/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeneratorInterfaceRivetInterface_LOC_USE := self  
PyGeneratorInterfaceRivetInterface_PACKAGE := self/src/GeneratorInterface/RivetInterface/python
ALL_PRODS += PyGeneratorInterfaceRivetInterface
PyGeneratorInterfaceRivetInterface_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeneratorInterfaceRivetInterface,src/GeneratorInterface/RivetInterface/python,src_GeneratorInterface_RivetInterface_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeneratorInterfaceRivetInterface,src/GeneratorInterface/RivetInterface/python))
endif
ALL_COMMONRULES += src_GeneratorInterface_RivetInterface_python
src_GeneratorInterface_RivetInterface_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_RivetInterface_python,src/GeneratorInterface/RivetInterface/python,PYTHON))
ALL_COMMONRULES += src_GeneratorInterface_RivetInterface_test
src_GeneratorInterface_RivetInterface_test_parent := GeneratorInterface/RivetInterface
src_GeneratorInterface_RivetInterface_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_RivetInterface_test,src/GeneratorInterface/RivetInterface/test,TEST))
ALL_SUBSYSTEMS+=Geometry
subdirs_src_Geometry = src_Geometry_HGCalGeometry src_Geometry_HcalCommonData
ALL_PACKAGES += Geometry/HGCalGeometry
subdirs_src_Geometry_HGCalGeometry := src_Geometry_HGCalGeometry_plugins src_Geometry_HGCalGeometry_python src_Geometry_HGCalGeometry_src src_Geometry_HGCalGeometry_test
ifeq ($(strip $(PyGeometryHGCalGeometry)),)
PyGeometryHGCalGeometry := self/src/Geometry/HGCalGeometry/python
src_Geometry_HGCalGeometry_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Geometry/HGCalGeometry/python)
PyGeometryHGCalGeometry_files := $(patsubst src/Geometry/HGCalGeometry/python/%,%,$(wildcard $(foreach dir,src/Geometry/HGCalGeometry/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeometryHGCalGeometry_LOC_USE := self  
PyGeometryHGCalGeometry_PACKAGE := self/src/Geometry/HGCalGeometry/python
ALL_PRODS += PyGeometryHGCalGeometry
PyGeometryHGCalGeometry_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeometryHGCalGeometry,src/Geometry/HGCalGeometry/python,src_Geometry_HGCalGeometry_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeometryHGCalGeometry,src/Geometry/HGCalGeometry/python))
endif
ALL_COMMONRULES += src_Geometry_HGCalGeometry_python
src_Geometry_HGCalGeometry_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HGCalGeometry_python,src/Geometry/HGCalGeometry/python,PYTHON))
ifeq ($(strip $(testGeometryHCCalGeometry)),)
testGeometryHCCalGeometry := self/src/Geometry/HGCalGeometry/test
testGeometryHCCalGeometry_files := $(patsubst src/Geometry/HGCalGeometry/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Geometry/HGCalGeometry/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HGCalGeometry/test/$(file). Please fix src/Geometry/HGCalGeometry/test/BuildFile.))))
testGeometryHCCalGeometry_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HGCalGeometry/test/BuildFile
testGeometryHCCalGeometry_LOC_USE := self  DataFormats/HcalDetId DataFormats/ForwardDetId DataFormats/GeometryVector Geometry/HcalTowerAlgo Geometry/HGCalGeometry Geometry/Records MagneticField/Engine MagneticField/Records TrackingTools/GeomPropagators TrackingTools/TrackAssociator CoralBase
testGeometryHCCalGeometry_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testGeometryHCCalGeometry,testGeometryHCCalGeometry,$(SCRAMSTORENAME_LIB),src/Geometry/HGCalGeometry/test))
testGeometryHCCalGeometry_PACKAGE := self/src/Geometry/HGCalGeometry/test
ALL_PRODS += testGeometryHCCalGeometry
testGeometryHCCalGeometry_INIT_FUNC        += $$(eval $$(call Library,testGeometryHCCalGeometry,src/Geometry/HGCalGeometry/test,src_Geometry_HGCalGeometry_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testGeometryHCCalGeometry_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testGeometryHCCalGeometry,src/Geometry/HGCalGeometry/test))
endif
ALL_COMMONRULES += src_Geometry_HGCalGeometry_test
src_Geometry_HGCalGeometry_test_parent := Geometry/HGCalGeometry
src_Geometry_HGCalGeometry_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HGCalGeometry_test,src/Geometry/HGCalGeometry/test,TEST))
ALL_PACKAGES += Geometry/HcalCommonData
subdirs_src_Geometry_HcalCommonData := src_Geometry_HcalCommonData_interface src_Geometry_HcalCommonData_plugins src_Geometry_HcalCommonData_python src_Geometry_HcalCommonData_src src_Geometry_HcalCommonData_test
ifeq ($(strip $(PyGeometryHcalCommonData)),)
PyGeometryHcalCommonData := self/src/Geometry/HcalCommonData/python
src_Geometry_HcalCommonData_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Geometry/HcalCommonData/python)
PyGeometryHcalCommonData_files := $(patsubst src/Geometry/HcalCommonData/python/%,%,$(wildcard $(foreach dir,src/Geometry/HcalCommonData/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeometryHcalCommonData_LOC_USE := self  
PyGeometryHcalCommonData_PACKAGE := self/src/Geometry/HcalCommonData/python
ALL_PRODS += PyGeometryHcalCommonData
PyGeometryHcalCommonData_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeometryHcalCommonData,src/Geometry/HcalCommonData/python,src_Geometry_HcalCommonData_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeometryHcalCommonData,src/Geometry/HcalCommonData/python))
endif
ALL_COMMONRULES += src_Geometry_HcalCommonData_python
src_Geometry_HcalCommonData_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HcalCommonData_python,src/Geometry/HcalCommonData/python,PYTHON))
ifeq ($(strip $(testHcalSimNumberingTester)),)
testHcalSimNumberingTester := self/src/Geometry/HcalCommonData/test
testHcalSimNumberingTester_files := $(patsubst src/Geometry/HcalCommonData/test/%,%,$(foreach file,HcalSimNumberingTester.cc,$(eval xfile:=$(wildcard src/Geometry/HcalCommonData/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HcalCommonData/test/$(file). Please fix src/Geometry/HcalCommonData/test/BuildFile.))))
testHcalSimNumberingTester_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/test/BuildFile
testHcalSimNumberingTester_LOC_USE := self  Geometry/HcalCommonData FWCore/Framework FWCore/ParameterSet FWCore/Utilities Geometry/Records CondFormats/GeometryObjects
testHcalSimNumberingTester_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testHcalSimNumberingTester,testHcalSimNumberingTester,$(SCRAMSTORENAME_LIB),src/Geometry/HcalCommonData/test))
testHcalSimNumberingTester_PACKAGE := self/src/Geometry/HcalCommonData/test
ALL_PRODS += testHcalSimNumberingTester
testHcalSimNumberingTester_INIT_FUNC        += $$(eval $$(call Library,testHcalSimNumberingTester,src/Geometry/HcalCommonData/test,src_Geometry_HcalCommonData_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testHcalSimNumberingTester_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testHcalSimNumberingTester,src/Geometry/HcalCommonData/test))
endif
ifeq ($(strip $(testHcalParametersAnalyzer)),)
testHcalParametersAnalyzer := self/src/Geometry/HcalCommonData/test
testHcalParametersAnalyzer_files := $(patsubst src/Geometry/HcalCommonData/test/%,%,$(foreach file,HcalParametersAnalyzer.cc,$(eval xfile:=$(wildcard src/Geometry/HcalCommonData/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HcalCommonData/test/$(file). Please fix src/Geometry/HcalCommonData/test/BuildFile.))))
testHcalParametersAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/test/BuildFile
testHcalParametersAnalyzer_LOC_USE := self  Geometry/HcalCommonData FWCore/Framework FWCore/ParameterSet FWCore/Utilities Geometry/Records CondFormats/GeometryObjects
testHcalParametersAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testHcalParametersAnalyzer,testHcalParametersAnalyzer,$(SCRAMSTORENAME_LIB),src/Geometry/HcalCommonData/test))
testHcalParametersAnalyzer_PACKAGE := self/src/Geometry/HcalCommonData/test
ALL_PRODS += testHcalParametersAnalyzer
testHcalParametersAnalyzer_INIT_FUNC        += $$(eval $$(call Library,testHcalParametersAnalyzer,src/Geometry/HcalCommonData/test,src_Geometry_HcalCommonData_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testHcalParametersAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testHcalParametersAnalyzer,src/Geometry/HcalCommonData/test))
endif
ifeq ($(strip $(testHcalRecNumberingTester)),)
testHcalRecNumberingTester := self/src/Geometry/HcalCommonData/test
testHcalRecNumberingTester_files := $(patsubst src/Geometry/HcalCommonData/test/%,%,$(foreach file,HcalRecNumberingTester.cc,$(eval xfile:=$(wildcard src/Geometry/HcalCommonData/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Geometry/HcalCommonData/test/$(file). Please fix src/Geometry/HcalCommonData/test/BuildFile.))))
testHcalRecNumberingTester_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/HcalCommonData/test/BuildFile
testHcalRecNumberingTester_LOC_USE := self  Geometry/HcalCommonData FWCore/Framework FWCore/ParameterSet FWCore/Utilities Geometry/Records CondFormats/GeometryObjects
testHcalRecNumberingTester_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testHcalRecNumberingTester,testHcalRecNumberingTester,$(SCRAMSTORENAME_LIB),src/Geometry/HcalCommonData/test))
testHcalRecNumberingTester_PACKAGE := self/src/Geometry/HcalCommonData/test
ALL_PRODS += testHcalRecNumberingTester
testHcalRecNumberingTester_INIT_FUNC        += $$(eval $$(call Library,testHcalRecNumberingTester,src/Geometry/HcalCommonData/test,src_Geometry_HcalCommonData_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testHcalRecNumberingTester_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testHcalRecNumberingTester,src/Geometry/HcalCommonData/test))
endif
ALL_COMMONRULES += src_Geometry_HcalCommonData_test
src_Geometry_HcalCommonData_test_parent := Geometry/HcalCommonData
src_Geometry_HcalCommonData_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Geometry_HcalCommonData_test,src/Geometry/HcalCommonData/test,TEST))
ALL_SUBSYSTEMS+=HLTrigger
subdirs_src_HLTrigger = src_HLTrigger_Configuration
ALL_SUBSYSTEMS+=KaMuCa
subdirs_src_KaMuCa = src_KaMuCa_Calibration
ALL_PACKAGES += HLTrigger/Configuration
subdirs_src_HLTrigger_Configuration := src_HLTrigger_Configuration_python src_HLTrigger_Configuration_scripts src_HLTrigger_Configuration_test
ifeq ($(strip $(PyHLTriggerConfiguration)),)
PyHLTriggerConfiguration := self/src/HLTrigger/Configuration/python
src_HLTrigger_Configuration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HLTrigger/Configuration/python)
PyHLTriggerConfiguration_files := $(patsubst src/HLTrigger/Configuration/python/%,%,$(wildcard $(foreach dir,src/HLTrigger/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHLTriggerConfiguration_LOC_USE := self  
PyHLTriggerConfiguration_PACKAGE := self/src/HLTrigger/Configuration/python
ALL_PRODS += PyHLTriggerConfiguration
PyHLTriggerConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHLTriggerConfiguration,src/HLTrigger/Configuration/python,src_HLTrigger_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyHLTriggerConfiguration,src/HLTrigger/Configuration/python))
endif
ALL_COMMONRULES += src_HLTrigger_Configuration_python
src_HLTrigger_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HLTrigger_Configuration_python,src/HLTrigger/Configuration/python,PYTHON))
src_HLTrigger_Configuration_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/HLTrigger/Configuration/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_HLTrigger_Configuration_scripts,src/HLTrigger/Configuration/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_COMMONRULES += src_HLTrigger_Configuration_test
src_HLTrigger_Configuration_test_parent := HLTrigger/Configuration
src_HLTrigger_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HLTrigger_Configuration_test,src/HLTrigger/Configuration/test,TEST))
ALL_PACKAGES += KaMuCa/Calibration
subdirs_src_KaMuCa_Calibration := src_KaMuCa_Calibration_data src_KaMuCa_Calibration_src src_KaMuCa_Calibration_test
ALL_COMMONRULES += src_KaMuCa_Calibration_test
src_KaMuCa_Calibration_test_parent := KaMuCa/Calibration
src_KaMuCa_Calibration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_KaMuCa_Calibration_test,src/KaMuCa/Calibration/test,TEST))
ALL_SUBSYSTEMS+=KinZfitter
subdirs_src_KinZfitter = src_KinZfitter_KinZfitter src_KinZfitter_HelperFunction
ALL_PACKAGES += KinZfitter/HelperFunction
subdirs_src_KinZfitter_HelperFunction := src_KinZfitter_HelperFunction_src
ALL_PACKAGES += KinZfitter/KinZfitter
subdirs_src_KinZfitter_KinZfitter := src_KinZfitter_KinZfitter_src
ALL_SUBSYSTEMS+=MelaAnalytics
subdirs_src_MelaAnalytics = src_MelaAnalytics_CandidateLOCaster src_MelaAnalytics_EventContainer src_MelaAnalytics_GenericMEComputer
ALL_PACKAGES += MelaAnalytics/CandidateLOCaster
subdirs_src_MelaAnalytics_CandidateLOCaster := src_MelaAnalytics_CandidateLOCaster_src src_MelaAnalytics_CandidateLOCaster_test
ALL_COMMONRULES += src_MelaAnalytics_CandidateLOCaster_test
src_MelaAnalytics_CandidateLOCaster_test_parent := MelaAnalytics/CandidateLOCaster
src_MelaAnalytics_CandidateLOCaster_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MelaAnalytics_CandidateLOCaster_test,src/MelaAnalytics/CandidateLOCaster/test,TEST))
ALL_PACKAGES += MelaAnalytics/EventContainer
subdirs_src_MelaAnalytics_EventContainer := src_MelaAnalytics_EventContainer_interface src_MelaAnalytics_EventContainer_src
ALL_PACKAGES += MelaAnalytics/GenericMEComputer
subdirs_src_MelaAnalytics_GenericMEComputer := src_MelaAnalytics_GenericMEComputer_interface src_MelaAnalytics_GenericMEComputer_src
ALL_SUBSYSTEMS+=PhysicsTools
subdirs_src_PhysicsTools = src_PhysicsTools_NanoAOD src_PhysicsTools_PatAlgos src_PhysicsTools_PatUtils
ALL_PACKAGES += PhysicsTools/NanoAOD
subdirs_src_PhysicsTools_NanoAOD := src_PhysicsTools_NanoAOD_interface src_PhysicsTools_NanoAOD_plugins src_PhysicsTools_NanoAOD_python src_PhysicsTools_NanoAOD_test
ifeq ($(strip $(PyPhysicsToolsNanoAOD)),)
PyPhysicsToolsNanoAOD := self/src/PhysicsTools/NanoAOD/python
src_PhysicsTools_NanoAOD_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/NanoAOD/python)
PyPhysicsToolsNanoAOD_files := $(patsubst src/PhysicsTools/NanoAOD/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/NanoAOD/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsNanoAOD_LOC_USE := self  
PyPhysicsToolsNanoAOD_PACKAGE := self/src/PhysicsTools/NanoAOD/python
ALL_PRODS += PyPhysicsToolsNanoAOD
PyPhysicsToolsNanoAOD_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/python,src_PhysicsTools_NanoAOD_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/python))
endif
ALL_COMMONRULES += src_PhysicsTools_NanoAOD_python
src_PhysicsTools_NanoAOD_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NanoAOD_python,src/PhysicsTools/NanoAOD/python,PYTHON))
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
ALL_PACKAGES += PhysicsTools/PatAlgos
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_plugins src_PhysicsTools_PatAlgos_python src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_test
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
src_PhysicsTools_PatAlgos_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
PyPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatAlgos_LOC_USE := self  
PyPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/python
ALL_PRODS += PyPhysicsToolsPatAlgos
PyPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python,src_PhysicsTools_PatAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_python
src_PhysicsTools_PatAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_python,src/PhysicsTools/PatAlgos/python,PYTHON))
src_PhysicsTools_PatAlgos_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/PatAlgos/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_PatAlgos_scripts,src/PhysicsTools/PatAlgos/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(runtestPhysicsToolsPatAlgos)),)
runtestPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/test
runtestPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,runtestPhysicsToolsPatAlgos.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
runtestPhysicsToolsPatAlgos_TEST_RUNNER_CMD :=  runtestPhysicsToolsPatAlgos  /bin/bash PhysicsTools/PatAlgos/test runtests.sh
runtestPhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
runtestPhysicsToolsPatAlgos_LOC_USE := self  FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
runtestPhysicsToolsPatAlgos_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB),src/PhysicsTools/PatAlgos/test))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsPatAlgos_testAnalyzers_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ALL_PACKAGES += PhysicsTools/PatUtils
subdirs_src_PhysicsTools_PatUtils := src_PhysicsTools_PatUtils_data src_PhysicsTools_PatUtils_interface src_PhysicsTools_PatUtils_plugins src_PhysicsTools_PatUtils_python src_PhysicsTools_PatUtils_src src_PhysicsTools_PatUtils_test
ifeq ($(strip $(PyPhysicsToolsPatUtils)),)
PyPhysicsToolsPatUtils := self/src/PhysicsTools/PatUtils/python
src_PhysicsTools_PatUtils_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatUtils/python)
PyPhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatUtils_LOC_USE := self  
PyPhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/python
ALL_PRODS += PyPhysicsToolsPatUtils
PyPhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python,src_PhysicsTools_PatUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_python
src_PhysicsTools_PatUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_python,src/PhysicsTools/PatUtils/python,PYTHON))
ALL_COMMONRULES += src_PhysicsTools_PatUtils_test
src_PhysicsTools_PatUtils_test_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_test,src/PhysicsTools/PatUtils/test,TEST))
ALL_SUBSYSTEMS+=RecoEgamma
subdirs_src_RecoEgamma = src_RecoEgamma_ElectronIdentification src_RecoEgamma_EgammaTools src_RecoEgamma_PhotonIdentification
ALL_PACKAGES += RecoEgamma/EgammaTools
subdirs_src_RecoEgamma_EgammaTools := src_RecoEgamma_EgammaTools_data src_RecoEgamma_EgammaTools_interface src_RecoEgamma_EgammaTools_plugins src_RecoEgamma_EgammaTools_python src_RecoEgamma_EgammaTools_src src_RecoEgamma_EgammaTools_test
ifeq ($(strip $(PyRecoEgammaEgammaTools)),)
PyRecoEgammaEgammaTools := self/src/RecoEgamma/EgammaTools/python
src_RecoEgamma_EgammaTools_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEgamma/EgammaTools/python)
PyRecoEgammaEgammaTools_files := $(patsubst src/RecoEgamma/EgammaTools/python/%,%,$(wildcard $(foreach dir,src/RecoEgamma/EgammaTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEgammaEgammaTools_LOC_USE := self  
PyRecoEgammaEgammaTools_PACKAGE := self/src/RecoEgamma/EgammaTools/python
ALL_PRODS += PyRecoEgammaEgammaTools
PyRecoEgammaEgammaTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEgammaEgammaTools,src/RecoEgamma/EgammaTools/python,src_RecoEgamma_EgammaTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoEgammaEgammaTools,src/RecoEgamma/EgammaTools/python))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_python
src_RecoEgamma_EgammaTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_python,src/RecoEgamma/EgammaTools/python,PYTHON))
ifeq ($(strip $(RecoEGammaGBRWrapperMaker)),)
RecoEGammaGBRWrapperMaker := self/src/RecoEgamma/EgammaTools/test
RecoEGammaGBRWrapperMaker_files := $(patsubst src/RecoEgamma/EgammaTools/test/%,%,$(foreach file,GBRWrapperMaker.cc,$(eval xfile:=$(wildcard src/RecoEgamma/EgammaTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/EgammaTools/test/$(file). Please fix src/RecoEgamma/EgammaTools/test/BuildFile.))))
RecoEGammaGBRWrapperMaker_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaTools/test/BuildFile
RecoEGammaGBRWrapperMaker_LOC_USE := self  FWCore/Framework PhysicsTools/MVAComputer PhysicsTools/MVATrainer CondCore/PluginSystem CondCore/DBOutputService CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates RecoEgamma/EgammaTools
RecoEGammaGBRWrapperMaker_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEGammaGBRWrapperMaker,RecoEGammaGBRWrapperMaker,$(SCRAMSTORENAME_LIB),src/RecoEgamma/EgammaTools/test))
RecoEGammaGBRWrapperMaker_PACKAGE := self/src/RecoEgamma/EgammaTools/test
ALL_PRODS += RecoEGammaGBRWrapperMaker
RecoEGammaGBRWrapperMaker_INIT_FUNC        += $$(eval $$(call Library,RecoEGammaGBRWrapperMaker,src/RecoEgamma/EgammaTools/test,src_RecoEgamma_EgammaTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEGammaGBRWrapperMaker_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEGammaGBRWrapperMaker,src/RecoEgamma/EgammaTools/test))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaTools_test
src_RecoEgamma_EgammaTools_test_parent := RecoEgamma/EgammaTools
src_RecoEgamma_EgammaTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaTools_test,src/RecoEgamma/EgammaTools/test,TEST))
ALL_PACKAGES += RecoEgamma/ElectronIdentification
subdirs_src_RecoEgamma_ElectronIdentification := src_RecoEgamma_ElectronIdentification_plugins src_RecoEgamma_ElectronIdentification_python src_RecoEgamma_ElectronIdentification_src src_RecoEgamma_ElectronIdentification_test
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
ALL_SUBSYSTEMS+=SimG4CMS
subdirs_src_SimG4CMS = src_SimG4CMS_Calo src_SimG4CMS_Forward
ifeq ($(strip $(runtestRecoEgammaElectronIdentification)),)
runtestRecoEgammaElectronIdentification := self/src/RecoEgamma/ElectronIdentification/test
runtestRecoEgammaElectronIdentification_files := $(patsubst src/RecoEgamma/ElectronIdentification/test/%,%,$(foreach file,runtestRecoEgammaElectronIdentification.cpp,$(eval xfile:=$(wildcard src/RecoEgamma/ElectronIdentification/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/ElectronIdentification/test/$(file). Please fix src/RecoEgamma/ElectronIdentification/test/BuildFile.))))
runtestRecoEgammaElectronIdentification_TEST_RUNNER_CMD :=  runtestRecoEgammaElectronIdentification  /bin/bash RecoEgamma/ElectronIdentification/test runtests.sh
runtestRecoEgammaElectronIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/test/BuildFile
runtestRecoEgammaElectronIdentification_LOC_USE := self  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates DataFormats/EcalRecHit CommonTools/UtilAlgos root rootcore RecoEgamma/EgammaTools RecoEgamma/ElectronIdentification FWCore/Utilities
runtestRecoEgammaElectronIdentification_PACKAGE := self/src/RecoEgamma/ElectronIdentification/test
ALL_PRODS += runtestRecoEgammaElectronIdentification
runtestRecoEgammaElectronIdentification_INIT_FUNC        += $$(eval $$(call Binary,runtestRecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/test,src_RecoEgamma_ElectronIdentification_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
runtestRecoEgammaElectronIdentification_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,runtestRecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/test))
endif
ifeq ($(strip $(RecoEgammaElectronIdentificationVIDExample)),)
RecoEgammaElectronIdentificationVIDExample := self/src/RecoEgamma/ElectronIdentification/test
RecoEgammaElectronIdentificationVIDExample_files := $(patsubst src/RecoEgamma/ElectronIdentification/test/%,%,$(foreach file,VIDUsageExample.cc,$(eval xfile:=$(wildcard src/RecoEgamma/ElectronIdentification/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/ElectronIdentification/test/$(file). Please fix src/RecoEgamma/ElectronIdentification/test/BuildFile.))))
RecoEgammaElectronIdentificationVIDExample_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/test/BuildFile
RecoEgammaElectronIdentificationVIDExample_LOC_USE := self  FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/EgammaCandidates DataFormats/EcalRecHit CommonTools/UtilAlgos root rootcore RecoEgamma/EgammaTools RecoEgamma/ElectronIdentification
RecoEgammaElectronIdentificationVIDExample_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaElectronIdentificationVIDExample,RecoEgammaElectronIdentificationVIDExample,$(SCRAMSTORENAME_LIB),src/RecoEgamma/ElectronIdentification/test))
RecoEgammaElectronIdentificationVIDExample_PACKAGE := self/src/RecoEgamma/ElectronIdentification/test
ALL_PRODS += RecoEgammaElectronIdentificationVIDExample
RecoEgammaElectronIdentificationVIDExample_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaElectronIdentificationVIDExample,src/RecoEgamma/ElectronIdentification/test,src_RecoEgamma_ElectronIdentification_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaElectronIdentificationVIDExample_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaElectronIdentificationVIDExample,src/RecoEgamma/ElectronIdentification/test))
endif
ALL_COMMONRULES += src_RecoEgamma_ElectronIdentification_test
src_RecoEgamma_ElectronIdentification_test_parent := RecoEgamma/ElectronIdentification
src_RecoEgamma_ElectronIdentification_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_ElectronIdentification_test,src/RecoEgamma/ElectronIdentification/test,TEST))
ALL_PACKAGES += RecoEgamma/PhotonIdentification
subdirs_src_RecoEgamma_PhotonIdentification := src_RecoEgamma_PhotonIdentification_plugins src_RecoEgamma_PhotonIdentification_python src_RecoEgamma_PhotonIdentification_src src_RecoEgamma_PhotonIdentification_test
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
ALL_SUBSYSTEMS+=SimDataFormats
subdirs_src_SimDataFormats = src_SimDataFormats_HTXS
ALL_PACKAGES += SimDataFormats/HTXS
subdirs_src_SimDataFormats_HTXS := src_SimDataFormats_HTXS_interface src_SimDataFormats_HTXS_src
ALL_PACKAGES += SimG4CMS/Calo
subdirs_src_SimG4CMS_Calo := src_SimG4CMS_Calo_data src_SimG4CMS_Calo_interface src_SimG4CMS_Calo_macros src_SimG4CMS_Calo_plugins src_SimG4CMS_Calo_python src_SimG4CMS_Calo_src src_SimG4CMS_Calo_test
ifeq ($(strip $(PySimG4CMSCalo)),)
PySimG4CMSCalo := self/src/SimG4CMS/Calo/python
src_SimG4CMS_Calo_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SimG4CMS/Calo/python)
PySimG4CMSCalo_files := $(patsubst src/SimG4CMS/Calo/python/%,%,$(wildcard $(foreach dir,src/SimG4CMS/Calo/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySimG4CMSCalo_LOC_USE := self  
PySimG4CMSCalo_PACKAGE := self/src/SimG4CMS/Calo/python
ALL_PRODS += PySimG4CMSCalo
PySimG4CMSCalo_INIT_FUNC        += $$(eval $$(call PythonProduct,PySimG4CMSCalo,src/SimG4CMS/Calo/python,src_SimG4CMS_Calo_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PySimG4CMSCalo,src/SimG4CMS/Calo/python))
endif
ALL_COMMONRULES += src_SimG4CMS_Calo_python
src_SimG4CMS_Calo_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Calo_python,src/SimG4CMS/Calo/python,PYTHON))
ifeq ($(strip $(testCaloSimHits)),)
testCaloSimHits := self/src/SimG4CMS/Calo/test
testCaloSimHits_files := $(patsubst src/SimG4CMS/Calo/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimG4CMS/Calo/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimG4CMS/Calo/test/$(file). Please fix src/SimG4CMS/Calo/test/BuildFile.))))
testCaloSimHits_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Calo/test/BuildFile
testCaloSimHits_LOC_USE := self  CommonTools/UtilAlgos DataFormats/EcalDetId DataFormats/HcalDetId FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry Geometry/HcalCommonData SimDataFormats/CaloHit SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts SimG4CMS/Calo boost root clhep
testCaloSimHits_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testCaloSimHits,testCaloSimHits,$(SCRAMSTORENAME_LIB),src/SimG4CMS/Calo/test))
testCaloSimHits_PACKAGE := self/src/SimG4CMS/Calo/test
ALL_PRODS += testCaloSimHits
testCaloSimHits_INIT_FUNC        += $$(eval $$(call Library,testCaloSimHits,src/SimG4CMS/Calo/test,src_SimG4CMS_Calo_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testCaloSimHits_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testCaloSimHits,src/SimG4CMS/Calo/test))
endif
ALL_COMMONRULES += src_SimG4CMS_Calo_test
src_SimG4CMS_Calo_test_parent := SimG4CMS/Calo
src_SimG4CMS_Calo_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Calo_test,src/SimG4CMS/Calo/test,TEST))
ALL_PACKAGES += SimG4CMS/Forward
subdirs_src_SimG4CMS_Forward := src_SimG4CMS_Forward_data src_SimG4CMS_Forward_doc src_SimG4CMS_Forward_plugins src_SimG4CMS_Forward_python src_SimG4CMS_Forward_src src_SimG4CMS_Forward_test
ifeq ($(strip $(PySimG4CMSForward)),)
PySimG4CMSForward := self/src/SimG4CMS/Forward/python
src_SimG4CMS_Forward_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SimG4CMS/Forward/python)
PySimG4CMSForward_files := $(patsubst src/SimG4CMS/Forward/python/%,%,$(wildcard $(foreach dir,src/SimG4CMS/Forward/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySimG4CMSForward_LOC_USE := self  
PySimG4CMSForward_PACKAGE := self/src/SimG4CMS/Forward/python
ALL_PRODS += PySimG4CMSForward
PySimG4CMSForward_INIT_FUNC        += $$(eval $$(call PythonProduct,PySimG4CMSForward,src/SimG4CMS/Forward/python,src_SimG4CMS_Forward_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PySimG4CMSForward,src/SimG4CMS/Forward/python))
endif
ALL_COMMONRULES += src_SimG4CMS_Forward_python
src_SimG4CMS_Forward_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Forward_python,src/SimG4CMS/Forward/python,PYTHON))
ifeq ($(strip $(SimG4CMSForwardTest)),)
SimG4CMSForwardTest := self/src/SimG4CMS/Forward/test
SimG4CMSForwardTest_files := $(patsubst src/SimG4CMS/Forward/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimG4CMS/Forward/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimG4CMS/Forward/test/$(file). Please fix src/SimG4CMS/Forward/test/BuildFile.))))
SimG4CMSForwardTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Forward/test/BuildFile
SimG4CMSForwardTest_LOC_FLAGS_REM_CXXFLAGS   := -Werror=unused-variable
SimG4CMSForwardTest_LOC_USE := self  FWCore/PluginManager SimG4CMS/Forward DataFormats/Math SimDataFormats/CaloTest FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger boost geant4core root rootmath
SimG4CMSForwardTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimG4CMSForwardTest,SimG4CMSForwardTest,$(SCRAMSTORENAME_LIB),src/SimG4CMS/Forward/test))
SimG4CMSForwardTest_PACKAGE := self/src/SimG4CMS/Forward/test
ALL_PRODS += SimG4CMSForwardTest
SimG4CMSForwardTest_INIT_FUNC        += $$(eval $$(call Library,SimG4CMSForwardTest,src/SimG4CMS/Forward/test,src_SimG4CMS_Forward_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
SimG4CMSForwardTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,SimG4CMSForwardTest,src/SimG4CMS/Forward/test))
endif
ALL_COMMONRULES += src_SimG4CMS_Forward_test
src_SimG4CMS_Forward_test_parent := SimG4CMS/Forward
src_SimG4CMS_Forward_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimG4CMS_Forward_test,src/SimG4CMS/Forward/test,TEST))
ALL_SUBSYSTEMS+=UFHZZAnalysisRun2
subdirs_src_UFHZZAnalysisRun2 = src_UFHZZAnalysisRun2_FSRPhotons src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer src_UFHZZAnalysisRun2_UFHZZ4LAna src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector src_UFHZZAnalysisRun2_Utilities
ALL_PACKAGES += UFHZZAnalysisRun2/FSRPhotons
subdirs_src_UFHZZAnalysisRun2_FSRPhotons := src_UFHZZAnalysisRun2_FSRPhotons_plugins src_UFHZZAnalysisRun2_FSRPhotons_python
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
ALL_PACKAGES += UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer
subdirs_src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer := src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_plugins src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_src
ifeq ($(strip $(PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer)),)
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python)
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_files := $(patsubst src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_LOC_USE := self  
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_PACKAGE := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python
ALL_PRODS += PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python,PYTHON))
ALL_PACKAGES += UFHZZAnalysisRun2/SlimmedElectronMvaIDProducer
subdirs_src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer := src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_doc src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_plugins src_UFHZZAnalysisRun2_SlimmedElectronMvaIDProducer_python
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
ALL_PACKAGES += UFHZZAnalysisRun2/UFHZZ4LAna
subdirs_src_UFHZZAnalysisRun2_UFHZZ4LAna := src_UFHZZAnalysisRun2_UFHZZ4LAna_src src_UFHZZAnalysisRun2_UFHZZ4LAna_python
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
ALL_PACKAGES += UFHZZAnalysisRun2/UFHZZ4LJetCorrector
subdirs_src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector := src_UFHZZAnalysisRun2_UFHZZ4LJetCorrector_plugins
ALL_PACKAGES += UFHZZAnalysisRun2/Utilities
subdirs_src_UFHZZAnalysisRun2_Utilities := src_UFHZZAnalysisRun2_Utilities_crab
ALL_SUBSYSTEMS+=Validation
subdirs_src_Validation = src_Validation_Performance
ALL_PACKAGES += Validation/Performance
subdirs_src_Validation_Performance := src_Validation_Performance_bin src_Validation_Performance_data src_Validation_Performance_doc src_Validation_Performance_interface src_Validation_Performance_python src_Validation_Performance_scripts src_Validation_Performance_src src_Validation_Performance_test
ifeq ($(strip $(cmsScimark2)),)
cmsScimark2 := self/src/Validation/Performance/bin
cmsScimark2_files := $(patsubst src/Validation/Performance/bin/%,%,$(foreach file,scimark2.c array.c FFT.c kernel.c LU.c MonteCarlo.c Random.c SOR.c SparseCompRow.c Stopwatch.c,$(eval xfile:=$(wildcard src/Validation/Performance/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Validation/Performance/bin/$(file). Please fix src/Validation/Performance/bin/BuildFile.))))
cmsScimark2_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/Performance/bin/BuildFile
cmsScimark2_LOC_USE := self  
cmsScimark2_PACKAGE := self/src/Validation/Performance/bin
ALL_PRODS += cmsScimark2
cmsScimark2_INIT_FUNC        += $$(eval $$(call Binary,cmsScimark2,src/Validation/Performance/bin,src_Validation_Performance_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
cmsScimark2_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,cmsScimark2,src/Validation/Performance/bin))
endif
ALL_COMMONRULES += src_Validation_Performance_bin
src_Validation_Performance_bin_parent := Validation/Performance
src_Validation_Performance_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_Performance_bin,src/Validation/Performance/bin,BINARY))
ifeq ($(strip $(PyValidationPerformance)),)
PyValidationPerformance := self/src/Validation/Performance/python
src_Validation_Performance_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Validation/Performance/python)
PyValidationPerformance_files := $(patsubst src/Validation/Performance/python/%,%,$(wildcard $(foreach dir,src/Validation/Performance/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyValidationPerformance_LOC_USE := self  
PyValidationPerformance_PACKAGE := self/src/Validation/Performance/python
ALL_PRODS += PyValidationPerformance
PyValidationPerformance_INIT_FUNC        += $$(eval $$(call PythonProduct,PyValidationPerformance,src/Validation/Performance/python,src_Validation_Performance_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyValidationPerformance,src/Validation/Performance/python))
endif
ALL_COMMONRULES += src_Validation_Performance_python
src_Validation_Performance_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_Performance_python,src/Validation/Performance/python,PYTHON))
src_Validation_Performance_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Validation/Performance/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Validation_Performance_scripts,src/Validation/Performance/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(SimDigiDumper)),)
SimDigiDumper := self/src/Validation/Performance/test
SimDigiDumper_files := $(patsubst src/Validation/Performance/test/%,%,$(foreach file,SimDigiDumper.cc,$(eval xfile:=$(wildcard src/Validation/Performance/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Validation/Performance/test/$(file). Please fix src/Validation/Performance/test/BuildFile.))))
SimDigiDumper_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/Performance/test/BuildFile
SimDigiDumper_LOC_USE := self  DataFormats/Common DataFormats/EcalDigi DataFormats/HcalDigi DataFormats/SiStripDigi DataFormats/SiPixelDigi DataFormats/DTDigi DataFormats/CSCDigi DataFormats/RPCDigi FWCore/Framework FWCore/MessageLogger
SimDigiDumper_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimDigiDumper,SimDigiDumper,$(SCRAMSTORENAME_LIB),src/Validation/Performance/test))
SimDigiDumper_PACKAGE := self/src/Validation/Performance/test
ALL_PRODS += SimDigiDumper
SimDigiDumper_INIT_FUNC        += $$(eval $$(call Library,SimDigiDumper,src/Validation/Performance/test,src_Validation_Performance_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
SimDigiDumper_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,SimDigiDumper,src/Validation/Performance/test))
endif
ALL_COMMONRULES += src_Validation_Performance_test
src_Validation_Performance_test_parent := Validation/Performance
src_Validation_Performance_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_Performance_test,src/Validation/Performance/test,TEST))
ALL_SUBSYSTEMS+=Pdfdata
subdirs_src_Pdfdata = 
ALL_SUBSYSTEMS+=JHUGenMELA
subdirs_src_JHUGenMELA = src_JHUGenMELA_MELA
ALL_PACKAGES += JHUGenMELA/MELA
subdirs_src_JHUGenMELA_MELA := src_JHUGenMELA_MELA_COLLIER src_JHUGenMELA_MELA_data src_JHUGenMELA_MELA_fortran src_JHUGenMELA_MELA_interface src_JHUGenMELA_MELA_python src_JHUGenMELA_MELA_src src_JHUGenMELA_MELA_test
ifeq ($(strip $(PyJHUGenMELAMELA)),)
PyJHUGenMELAMELA := self/src/JHUGenMELA/MELA/python
src_JHUGenMELA_MELA_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JHUGenMELA/MELA/python)
PyJHUGenMELAMELA_files := $(patsubst src/JHUGenMELA/MELA/python/%,%,$(wildcard $(foreach dir,src/JHUGenMELA/MELA/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJHUGenMELAMELA_LOC_USE := self  
PyJHUGenMELAMELA_PACKAGE := self/src/JHUGenMELA/MELA/python
ALL_PRODS += PyJHUGenMELAMELA
PyJHUGenMELAMELA_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJHUGenMELAMELA,src/JHUGenMELA/MELA/python,src_JHUGenMELA_MELA_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJHUGenMELAMELA,src/JHUGenMELA/MELA/python))
endif
ALL_COMMONRULES += src_JHUGenMELA_MELA_python
src_JHUGenMELA_MELA_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JHUGenMELA_MELA_python,src/JHUGenMELA/MELA/python,PYTHON))
ALL_COMMONRULES += src_JHUGenMELA_MELA_test
src_JHUGenMELA_MELA_test_parent := JHUGenMELA/MELA
src_JHUGenMELA_MELA_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JHUGenMELA_MELA_test,src/JHUGenMELA/MELA/test,TEST))
ALL_SUBSYSTEMS+=gconstants
subdirs_src_gconstants = 
