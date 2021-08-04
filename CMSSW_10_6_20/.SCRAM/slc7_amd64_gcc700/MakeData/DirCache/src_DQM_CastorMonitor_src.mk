ifeq ($(strip $(DQM/CastorMonitor)),)
ALL_COMMONRULES += src_DQM_CastorMonitor_src
src_DQM_CastorMonitor_src_parent := DQM/CastorMonitor
src_DQM_CastorMonitor_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DQM_CastorMonitor_src,src/DQM/CastorMonitor/src,LIBRARY))
DQMCastorMonitor := self/DQM/CastorMonitor
DQM/CastorMonitor := DQMCastorMonitor
DQMCastorMonitor_files := $(patsubst src/DQM/CastorMonitor/src/%,%,$(wildcard $(foreach dir,src/DQM/CastorMonitor/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DQMCastorMonitor_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/CastorMonitor/BuildFile
DQMCastorMonitor_LOC_USE := self  DataFormats/HcalDetId DataFormats/HcalRecHit DataFormats/HcalDigi CondFormats/CastorObjects CalibFormats/CastorObjects DataFormats/JetReco EventFilter/CastorRawToDigi Geometry/CaloGeometry FWCore/ParameterSet FWCore/Framework FWCore/MessageLogger DQMServices/Core DQMServices/Components DataFormats/FEDRawData rootmath
DQMCastorMonitor_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DQMCastorMonitor,DQMCastorMonitor,$(SCRAMSTORENAME_LIB),src/DQM/CastorMonitor/src))
DQMCastorMonitor_PACKAGE := self/src/DQM/CastorMonitor/src
ALL_PRODS += DQMCastorMonitor
DQMCastorMonitor_CLASS := LIBRARY
DQM/CastorMonitor_forbigobj+=DQMCastorMonitor
DQMCastorMonitor_INIT_FUNC        += $$(eval $$(call Library,DQMCastorMonitor,src/DQM/CastorMonitor/src,src_DQM_CastorMonitor_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
