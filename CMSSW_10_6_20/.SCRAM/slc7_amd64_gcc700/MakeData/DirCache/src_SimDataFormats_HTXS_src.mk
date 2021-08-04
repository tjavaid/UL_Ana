ifeq ($(strip $(SimDataFormats/HTXS)),)
ALL_COMMONRULES += src_SimDataFormats_HTXS_src
src_SimDataFormats_HTXS_src_parent := SimDataFormats/HTXS
src_SimDataFormats_HTXS_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimDataFormats_HTXS_src,src/SimDataFormats/HTXS/src,LIBRARY))
SimDataFormatsHTXS := self/SimDataFormats/HTXS
SimDataFormats/HTXS := SimDataFormatsHTXS
SimDataFormatsHTXS_files := $(patsubst src/SimDataFormats/HTXS/src/%,%,$(wildcard $(foreach dir,src/SimDataFormats/HTXS/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimDataFormatsHTXS_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimDataFormats/HTXS/BuildFile
SimDataFormatsHTXS_LOC_USE := self  DataFormats/Common DataFormats/Math
SimDataFormatsHTXS_LCGDICTS  := x 
SimDataFormatsHTXS_PRE_INIT_FUNC += $$(eval $$(call LCGDict,SimDataFormatsHTXS,src/SimDataFormats/HTXS/src/classes.h,src/SimDataFormats/HTXS/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
SimDataFormatsHTXS_EX_LIB   := SimDataFormatsHTXS
SimDataFormatsHTXS_EX_USE   := $(foreach d,$(SimDataFormatsHTXS_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimDataFormatsHTXS_PACKAGE := self/src/SimDataFormats/HTXS/src
ALL_PRODS += SimDataFormatsHTXS
SimDataFormatsHTXS_CLASS := LIBRARY
SimDataFormats/HTXS_forbigobj+=SimDataFormatsHTXS
SimDataFormatsHTXS_INIT_FUNC        += $$(eval $$(call Library,SimDataFormatsHTXS,src/SimDataFormats/HTXS/src,src_SimDataFormats_HTXS_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
