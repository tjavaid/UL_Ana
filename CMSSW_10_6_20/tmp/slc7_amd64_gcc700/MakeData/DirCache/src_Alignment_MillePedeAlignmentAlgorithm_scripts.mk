src_Alignment_MillePedeAlignmentAlgorithm_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Alignment/MillePedeAlignmentAlgorithm/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Alignment_MillePedeAlignmentAlgorithm_scripts,src/Alignment/MillePedeAlignmentAlgorithm/scripts,$(SCRAMSTORENAME_BIN),*))
