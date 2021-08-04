src_Validation_Performance_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Validation/Performance/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Validation_Performance_scripts,src/Validation/Performance/scripts,$(SCRAMSTORENAME_BIN),*))
