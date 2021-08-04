ifeq ($(strip $(CondCore/ESSources)),)
ALL_COMMONRULES += src_CondCore_ESSources_src
src_CondCore_ESSources_src_parent := CondCore/ESSources
src_CondCore_ESSources_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondCore_ESSources_src,src/CondCore/ESSources/src,LIBRARY))
CondCoreESSources := self/CondCore/ESSources
CondCore/ESSources := CondCoreESSources
CondCoreESSources_files := $(patsubst src/CondCore/ESSources/src/%,%,$(wildcard $(foreach dir,src/CondCore/ESSources/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondCoreESSources_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondCore/ESSources/BuildFile
CondCoreESSources_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CondCore/CondDB
CondCoreESSources_EX_LIB   := CondCoreESSources
CondCoreESSources_EX_USE   := $(foreach d,$(CondCoreESSources_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondCoreESSources_PACKAGE := self/src/CondCore/ESSources/src
ALL_PRODS += CondCoreESSources
CondCoreESSources_CLASS := LIBRARY
CondCore/ESSources_forbigobj+=CondCoreESSources
CondCoreESSources_INIT_FUNC        += $$(eval $$(call Library,CondCoreESSources,src/CondCore/ESSources/src,src_CondCore_ESSources_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
