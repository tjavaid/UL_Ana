ifeq ($(strip $(RecoEgamma/ElectronIdentification)),)
ALL_COMMONRULES += src_RecoEgamma_ElectronIdentification_src
src_RecoEgamma_ElectronIdentification_src_parent := RecoEgamma/ElectronIdentification
src_RecoEgamma_ElectronIdentification_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEgamma_ElectronIdentification_src,src/RecoEgamma/ElectronIdentification/src,LIBRARY))
RecoEgammaElectronIdentification := self/RecoEgamma/ElectronIdentification
RecoEgamma/ElectronIdentification := RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_files := $(patsubst src/RecoEgamma/ElectronIdentification/src/%,%,$(wildcard $(foreach dir,src/RecoEgamma/ElectronIdentification/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEgammaElectronIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/ElectronIdentification/BuildFile
RecoEgammaElectronIdentification_LOC_USE := self  FWCore/Framework DataFormats/EgammaReco Geometry/CaloGeometry CondFormats/EgammaObjects RecoEcal/EgammaCoreTools DataFormats/TrackReco CommonTools/MVAUtils MagneticField/Records MagneticField/Engine RecoEgamma/EgammaTools RecoEgamma/EgammaIsolationAlgos PhysicsTools/SelectorUtils
RecoEgammaElectronIdentification_LCGDICTS  := x 
RecoEgammaElectronIdentification_PRE_INIT_FUNC += $$(eval $$(call LCGDict,RecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/src/classes.h,src/RecoEgamma/ElectronIdentification/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
RecoEgammaElectronIdentification_EX_LIB   := RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_EX_USE   := $(foreach d,$(RecoEgammaElectronIdentification_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaElectronIdentification_PACKAGE := self/src/RecoEgamma/ElectronIdentification/src
ALL_PRODS += RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_CLASS := LIBRARY
RecoEgamma/ElectronIdentification_forbigobj+=RecoEgammaElectronIdentification
RecoEgammaElectronIdentification_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaElectronIdentification,src/RecoEgamma/ElectronIdentification/src,src_RecoEgamma_ElectronIdentification_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
