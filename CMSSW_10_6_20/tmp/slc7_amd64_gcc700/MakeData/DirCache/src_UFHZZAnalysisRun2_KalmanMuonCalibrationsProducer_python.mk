ifeq ($(strip $(PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer)),)
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python)
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_files := $(patsubst src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python/%,%,$(wildcard $(foreach dir,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_LOC_USE := self  
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_PACKAGE := self/src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python
ALL_PRODS += PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer
PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyUFHZZAnalysisRun2KalmanMuonCalibrationsProducer,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python))
endif
ALL_COMMONRULES += src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python
src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_UFHZZAnalysisRun2_KalmanMuonCalibrationsProducer_python,src/UFHZZAnalysisRun2/KalmanMuonCalibrationsProducer/python,PYTHON))
