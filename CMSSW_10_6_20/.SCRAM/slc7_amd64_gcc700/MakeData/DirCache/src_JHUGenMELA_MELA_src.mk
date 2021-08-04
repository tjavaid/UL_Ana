ifeq ($(strip $(JHUGenMELA/MELA)),)
ALL_COMMONRULES += src_JHUGenMELA_MELA_src
src_JHUGenMELA_MELA_src_parent := JHUGenMELA/MELA
src_JHUGenMELA_MELA_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JHUGenMELA_MELA_src,src/JHUGenMELA/MELA/src,LIBRARY))
JHUGenMELAMELA := self/JHUGenMELA/MELA
JHUGenMELA/MELA := JHUGenMELAMELA
JHUGenMELAMELA_files := $(patsubst src/JHUGenMELA/MELA/src/%,%,$(wildcard $(foreach dir,src/JHUGenMELA/MELA/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JHUGenMELAMELA_BuildFile    := $(WORKINGDIR)/cache/bf/src/JHUGenMELA/MELA/BuildFile
JHUGenMELAMELA_LOC_FLAGS_LDFLAGS   := -Wl,-rpath=$(CMSSW_BASE)/src/JHUGenMELA/MELA/data/$(SCRAM_ARCH) -L$(CMSSW_BASE)/src/JHUGenMELA/MELA/data/$(SCRAM_ARCH) -lmcfm_707 -ljhugenmela -lcollier
JHUGenMELAMELA_LOC_FLAGS_CPPDEFINES   := -D_melapkgpath_='.oODOLLAROo..oOOPEN_BRACKETOo.CMSSW_BASE.oOCLOSE_BRACKETOo./src/JHUGenMELA/MELA/'
JHUGenMELAMELA_LOC_FLAGS_CPPFLAGS   := -I$(CMSSW_BASE)/src/JHUGenMELA/MELA/interface/
JHUGenMELAMELA_LOC_FLAGS_FFLAGS   := -O3 -ffree-form -ffree-line-length-none -Dcompiler=2 -Dmela -fno-automatic -fno-f2c  -fPIC -g
JHUGenMELAMELA_LOC_USE := self  f77compiler root rootmath roofit roofitcore clhep
JHUGenMELAMELA_ROOTDICTS  := y 
JHUGenMELAMELA_PRE_INIT_FUNC += $$(eval $$(call RootDict,JHUGenMELAMELA,src/JHUGenMELA/MELA/src,LinkDef.h,$(SCRAMSTORENAME_LIB)))
JHUGenMELAMELA_EX_LIB   := JHUGenMELAMELA
JHUGenMELAMELA_EX_USE   := $(foreach d,$(JHUGenMELAMELA_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JHUGenMELAMELA_PACKAGE := self/src/JHUGenMELA/MELA/src
ALL_PRODS += JHUGenMELAMELA
JHUGenMELAMELA_CLASS := LIBRARY
JHUGenMELA/MELA_forbigobj+=JHUGenMELAMELA
JHUGenMELAMELA_INIT_FUNC        += $$(eval $$(call Library,JHUGenMELAMELA,src/JHUGenMELA/MELA/src,src_JHUGenMELA_MELA_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
