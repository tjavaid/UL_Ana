ifeq ($(strip $(RecoEgamma/PhotonIdentification)),)
ALL_COMMONRULES += src_RecoEgamma_PhotonIdentification_src
src_RecoEgamma_PhotonIdentification_src_parent := RecoEgamma/PhotonIdentification
src_RecoEgamma_PhotonIdentification_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEgamma_PhotonIdentification_src,src/RecoEgamma/PhotonIdentification/src,LIBRARY))
RecoEgammaPhotonIdentification := self/RecoEgamma/PhotonIdentification
RecoEgamma/PhotonIdentification := RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_files := $(patsubst src/RecoEgamma/PhotonIdentification/src/%,%,$(wildcard $(foreach dir,src/RecoEgamma/PhotonIdentification/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEgammaPhotonIdentification_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/PhotonIdentification/BuildFile
RecoEgammaPhotonIdentification_LOC_USE := self  FWCore/Framework FWCore/PluginManager DataFormats/HcalRecHit DataFormats/EgammaReco DataFormats/PatCandidates DataFormats/ParticleFlowCandidate RecoEcal/EgammaCoreTools DataFormats/BeamSpot Geometry/CaloGeometry RecoEgamma/EgammaIsolationAlgos PhysicsTools/SelectorUtils
RecoEgammaPhotonIdentification_LCGDICTS  := x 
RecoEgammaPhotonIdentification_PRE_INIT_FUNC += $$(eval $$(call LCGDict,RecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/src/classes.h,src/RecoEgamma/PhotonIdentification/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,))
RecoEgammaPhotonIdentification_EX_LIB   := RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_EX_USE   := $(foreach d,$(RecoEgammaPhotonIdentification_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaPhotonIdentification_PACKAGE := self/src/RecoEgamma/PhotonIdentification/src
ALL_PRODS += RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_CLASS := LIBRARY
RecoEgamma/PhotonIdentification_forbigobj+=RecoEgammaPhotonIdentification
RecoEgammaPhotonIdentification_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaPhotonIdentification,src/RecoEgamma/PhotonIdentification/src,src_RecoEgamma_PhotonIdentification_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
