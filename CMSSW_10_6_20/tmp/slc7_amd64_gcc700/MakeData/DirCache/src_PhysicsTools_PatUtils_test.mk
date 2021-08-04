ALL_COMMONRULES += src_PhysicsTools_PatUtils_test
src_PhysicsTools_PatUtils_test_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_test,src/PhysicsTools/PatUtils/test,TEST))
