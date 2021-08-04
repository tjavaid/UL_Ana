src_Configuration_PyReleaseValidation_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Configuration/PyReleaseValidation/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Configuration_PyReleaseValidation_scripts,src/Configuration/PyReleaseValidation/scripts,$(SCRAMSTORENAME_BIN),*))
