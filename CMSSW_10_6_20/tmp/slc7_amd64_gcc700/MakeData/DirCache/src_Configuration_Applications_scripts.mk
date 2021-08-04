src_Configuration_Applications_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Configuration/Applications/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Configuration_Applications_scripts,src/Configuration/Applications/scripts,$(SCRAMSTORENAME_BIN),*))
