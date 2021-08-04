ALL_COMMONRULES += src_GeneratorInterface_Core_test
src_GeneratorInterface_Core_test_parent := GeneratorInterface/Core
src_GeneratorInterface_Core_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Core_test,src/GeneratorInterface/Core/test,TEST))
