ALL_COMMONRULES += src_GeneratorInterface_GenFilters_plugins
src_GeneratorInterface_GenFilters_plugins_parent := GeneratorInterface/GenFilters
src_GeneratorInterface_GenFilters_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_GenFilters_plugins,src/GeneratorInterface/GenFilters/plugins,PLUGINS))
