// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIslc7_amd64_gcc700dIsrcdIKaMuCadICalibrationdIsrcdIKaMuCaCalibrationdIadIKaMuCaCalibration_xr

/*******************************************************************/
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define G__DICTIONARY
#include "RConfig.h"
#include "TClass.h"
#include "TDictAttributeMap.h"
#include "TInterpreter.h"
#include "TROOT.h"
#include "TBuffer.h"
#include "TMemberInspector.h"
#include "TInterpreter.h"
#include "TVirtualMutex.h"
#include "TError.h"

#ifndef G__ROOT
#define G__ROOT
#endif

#include "RtypesImp.h"
#include "TIsAProxy.h"
#include "TFileMergeInfo.h"
#include <algorithm>
#include "TCollectionProxyInfo.h"
/*******************************************************************/

#include "TDataMember.h"

// Since CINT ignores the std namespace, we need to do so in this file.
namespace std {} using namespace std;

// Header files passed as explicit arguments
#include "src/KaMuCa/Calibration/src/classes.h"

// Header files passed via #pragma extra_include

namespace ROOT {
   static TClass *KalmanMuonCalibrator_Dictionary();
   static void KalmanMuonCalibrator_TClassManip(TClass*);
   static void *new_KalmanMuonCalibrator(void *p = 0);
   static void *newArray_KalmanMuonCalibrator(Long_t size, void *p);
   static void delete_KalmanMuonCalibrator(void *p);
   static void deleteArray_KalmanMuonCalibrator(void *p);
   static void destruct_KalmanMuonCalibrator(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::KalmanMuonCalibrator*)
   {
      ::KalmanMuonCalibrator *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::KalmanMuonCalibrator));
      static ::ROOT::TGenericClassInfo 
         instance("KalmanMuonCalibrator", "KaMuCa/Calibration/interface/KalmanMuonCalibrator.h", 10,
                  typeid(::KalmanMuonCalibrator), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &KalmanMuonCalibrator_Dictionary, isa_proxy, 4,
                  sizeof(::KalmanMuonCalibrator) );
      instance.SetNew(&new_KalmanMuonCalibrator);
      instance.SetNewArray(&newArray_KalmanMuonCalibrator);
      instance.SetDelete(&delete_KalmanMuonCalibrator);
      instance.SetDeleteArray(&deleteArray_KalmanMuonCalibrator);
      instance.SetDestructor(&destruct_KalmanMuonCalibrator);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::KalmanMuonCalibrator*)
   {
      return GenerateInitInstanceLocal((::KalmanMuonCalibrator*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::KalmanMuonCalibrator*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *KalmanMuonCalibrator_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::KalmanMuonCalibrator*)0x0)->GetClass();
      KalmanMuonCalibrator_TClassManip(theClass);
   return theClass;
   }

   static void KalmanMuonCalibrator_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_KalmanMuonCalibrator(void *p) {
      return  p ? new(p) ::KalmanMuonCalibrator : new ::KalmanMuonCalibrator;
   }
   static void *newArray_KalmanMuonCalibrator(Long_t nElements, void *p) {
      return p ? new(p) ::KalmanMuonCalibrator[nElements] : new ::KalmanMuonCalibrator[nElements];
   }
   // Wrapper around operator delete
   static void delete_KalmanMuonCalibrator(void *p) {
      delete ((::KalmanMuonCalibrator*)p);
   }
   static void deleteArray_KalmanMuonCalibrator(void *p) {
      delete [] ((::KalmanMuonCalibrator*)p);
   }
   static void destruct_KalmanMuonCalibrator(void *p) {
      typedef ::KalmanMuonCalibrator current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::KalmanMuonCalibrator

namespace {
  void TriggerDictionaryInitialization_KaMuCaCalibration_xr_Impl() {
    static const char* headers[] = {
0    };
    static const char* includePaths[] = {
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/src",
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/poison",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/cmssw/CMSSW_10_6_20/src",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/lcg/root/6.14.09-pafccj6/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/pcre/8.37-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/boost/1.67.0-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/bz2lib/1.0.6-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/gsl/2.2.1-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/libuuid/2.22.2-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/libxml2/2.9.1-pafccj/include/libxml2",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/tbb/2019_U3-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/xz/5.2.2-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/zlib-x86_64/1.2.11-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/md5/1.0.0-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/OpenBLAS/0.3.5-nmpfii2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/tinyxml2/6.2.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/lcg/root/6.14.09-pafccj6/include",
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/",
0
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "KaMuCaCalibration_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_Autoloading_Map;
class __attribute__((annotate("$clingAutoload$KaMuCa/Calibration/interface/KalmanMuonCalibrator.h")))  KalmanMuonCalibrator;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "KaMuCaCalibration_xr dictionary payload"

#ifndef G__VECTOR_HAS_CLASS_ITERATOR
  #define G__VECTOR_HAS_CLASS_ITERATOR 1
#endif
#ifndef CMS_DICT_IMPL
  #define CMS_DICT_IMPL 1
#endif
#ifndef _REENTRANT
  #define _REENTRANT 1
#endif
#ifndef GNUSOURCE
  #define GNUSOURCE 1
#endif
#ifndef __STRICT_ANSI__
  #define __STRICT_ANSI__ 1
#endif
#ifndef GNU_GCC
  #define GNU_GCC 1
#endif
#ifndef _GNU_SOURCE
  #define _GNU_SOURCE 1
#endif
#ifndef TBB_USE_GLIBCXX_VERSION
  #define TBB_USE_GLIBCXX_VERSION 70401
#endif
#ifndef BOOST_SPIRIT_THREADSAFE
  #define BOOST_SPIRIT_THREADSAFE 1
#endif
#ifndef PHOENIX_THREADSAFE
  #define PHOENIX_THREADSAFE 1
#endif
#ifndef CMSSW_GIT_HASH
  #define CMSSW_GIT_HASH "CMSSW_10_6_20"
#endif
#ifndef PROJECT_NAME
  #define PROJECT_NAME "CMSSW"
#endif
#ifndef PROJECT_VERSION
  #define PROJECT_VERSION "CMSSW_10_6_20"
#endif
#ifndef CMSSW_REFLEX_DICT
  #define CMSSW_REFLEX_DICT 1
#endif

#define _BACKWARD_BACKWARD_WARNING_H
#include "DataFormats/Common/interface/Wrapper.h"
#include "KaMuCa/Calibration/interface/KalmanMuonCalibrator.h"


#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[]={
"KalmanMuonCalibrator", payloadCode, "@",
nullptr};

    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("KaMuCaCalibration_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_KaMuCaCalibration_xr_Impl, {}, classesHeaders, /*has no C++ module*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_KaMuCaCalibration_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_KaMuCaCalibration_xr() {
  TriggerDictionaryInitialization_KaMuCaCalibration_xr_Impl();
}
