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
