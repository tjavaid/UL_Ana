ifeq ($(strip $(CommonToolsPileupAlgos_plugins)),)
CommonToolsPileupAlgos_plugins := self/src/CommonTools/PileupAlgos/plugins
PLUGINS:=yes
CommonToolsPileupAlgos_plugins_files := $(patsubst src/CommonTools/PileupAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/PileupAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/PileupAlgos/plugins/$(file). Please fix src/CommonTools/PileupAlgos/plugins/BuildFile.))))
CommonToolsPileupAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/PileupAlgos/plugins/BuildFile
CommonToolsPileupAlgos_plugins_LOC_USE := self  DataFormats/ParticleFlowCandidate DataFormats/JetReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects CommonTools/Utils CommonTools/ParticleFlow CommonTools/PileupAlgos fastjet fastjet-contrib
CommonToolsPileupAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsPileupAlgos_plugins,CommonToolsPileupAlgos_plugins,$(SCRAMSTORENAME_LIB),src/CommonTools/PileupAlgos/plugins))
CommonToolsPileupAlgos_plugins_PACKAGE := self/src/CommonTools/PileupAlgos/plugins
ALL_PRODS += CommonToolsPileupAlgos_plugins
CommonTools/PileupAlgos_forbigobj+=CommonToolsPileupAlgos_plugins
CommonToolsPileupAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,CommonToolsPileupAlgos_plugins,src/CommonTools/PileupAlgos/plugins,src_CommonTools_PileupAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
CommonToolsPileupAlgos_plugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,CommonToolsPileupAlgos_plugins,src/CommonTools/PileupAlgos/plugins))
endif
ALL_COMMONRULES += src_CommonTools_PileupAlgos_plugins
src_CommonTools_PileupAlgos_plugins_parent := CommonTools/PileupAlgos
src_CommonTools_PileupAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_PileupAlgos_plugins,src/CommonTools/PileupAlgos/plugins,PLUGINS))
