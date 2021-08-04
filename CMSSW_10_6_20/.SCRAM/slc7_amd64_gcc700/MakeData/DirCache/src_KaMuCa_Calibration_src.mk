ifeq ($(strip $(KaMuCa/Calibration)),)
ALL_COMMONRULES += src_KaMuCa_Calibration_src
src_KaMuCa_Calibration_src_parent := KaMuCa/Calibration
src_KaMuCa_Calibration_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_KaMuCa_Calibration_src,src/KaMuCa/Calibration/src,LIBRARY))
KaMuCaCalibration := self/KaMuCa/Calibration
KaMuCa/Calibration := KaMuCaCalibration
KaMuCaCalibration_files := $(patsubst src/KaMuCa/Calibration/src/%,%,$(wildcard $(foreach dir,src/KaMuCa/Calibration/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
KaMuCaCalibration_BuildFile    := $(WORKINGDIR)/cache/bf/src/KaMuCa/Calibration/BuildFile
KaMuCaCalibration_LOC_USE := self  root rootmath roofit roostats histfactory libxml2 DataFormats/Math FWCore/ParameterSet boost_program_options boost_filesystem
KaMuCaCalibration_LCGDICTS  := x 
KaMuCaCalibration_PRE_INIT_FUNC += $$(eval $$(call LCGDict,KaMuCaCalibration,src/KaMuCa/Calibration/src/classes.h,src/KaMuCa/Calibration/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
KaMuCaCalibration_EX_LIB   := KaMuCaCalibration
KaMuCaCalibration_EX_USE   := $(foreach d,$(KaMuCaCalibration_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
KaMuCaCalibration_PACKAGE := self/src/KaMuCa/Calibration/src
ALL_PRODS += KaMuCaCalibration
KaMuCaCalibration_CLASS := LIBRARY
KaMuCa/Calibration_forbigobj+=KaMuCaCalibration
KaMuCaCalibration_INIT_FUNC        += $$(eval $$(call Library,KaMuCaCalibration,src/KaMuCa/Calibration/src,src_KaMuCa_Calibration_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
