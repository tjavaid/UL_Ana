ifeq ($(strip $(PyPhysicsToolsNanoAOD)),)
PyPhysicsToolsNanoAOD := self/src/PhysicsTools/NanoAOD/python
src_PhysicsTools_NanoAOD_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/NanoAOD/python)
PyPhysicsToolsNanoAOD_files := $(patsubst src/PhysicsTools/NanoAOD/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/NanoAOD/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsNanoAOD_LOC_USE := self  
PyPhysicsToolsNanoAOD_PACKAGE := self/src/PhysicsTools/NanoAOD/python
ALL_PRODS += PyPhysicsToolsNanoAOD
PyPhysicsToolsNanoAOD_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/python,src_PhysicsTools_NanoAOD_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/python))
endif
ALL_COMMONRULES += src_PhysicsTools_NanoAOD_python
src_PhysicsTools_NanoAOD_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NanoAOD_python,src/PhysicsTools/NanoAOD/python,PYTHON))
