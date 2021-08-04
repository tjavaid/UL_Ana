src_Fireworks_FWInterface_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Fireworks/FWInterface/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Fireworks_FWInterface_scripts,src/Fireworks/FWInterface/scripts,$(SCRAMSTORENAME_BIN),*))
