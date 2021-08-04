ifeq ($(strip $(SimG4CMS/Calo)),)
ALL_COMMONRULES += src_SimG4CMS_Calo_src
src_SimG4CMS_Calo_src_parent := SimG4CMS/Calo
src_SimG4CMS_Calo_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SimG4CMS_Calo_src,src/SimG4CMS/Calo/src,LIBRARY))
SimG4CMSCalo := self/SimG4CMS/Calo
SimG4CMS/Calo := SimG4CMSCalo
SimG4CMSCalo_files := $(patsubst src/SimG4CMS/Calo/src/%,%,$(wildcard $(foreach dir,src/SimG4CMS/Calo/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SimG4CMSCalo_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimG4CMS/Calo/BuildFile
SimG4CMSCalo_LOC_USE := self  FWCore/PluginManager SimGeneral/GFlash SimG4Core/SensitiveDetector SimG4Core/Notification DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/ForwardDetId DataFormats/Math CondFormats/HcalObjects CondFormats/DataRecord SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/CaloTest Geometry/HcalCommonData Geometry/EcalCommonData Geometry/HGCalCommonData DetectorDescription/Core FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos boost clhep geant4core hepmc root rootmath
SimG4CMSCalo_EX_LIB   := SimG4CMSCalo
SimG4CMSCalo_EX_USE   := $(foreach d,$(SimG4CMSCalo_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSCalo_PACKAGE := self/src/SimG4CMS/Calo/src
ALL_PRODS += SimG4CMSCalo
SimG4CMSCalo_CLASS := LIBRARY
SimG4CMS/Calo_forbigobj+=SimG4CMSCalo
SimG4CMSCalo_INIT_FUNC        += $$(eval $$(call Library,SimG4CMSCalo,src/SimG4CMS/Calo/src,src_SimG4CMS_Calo_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
