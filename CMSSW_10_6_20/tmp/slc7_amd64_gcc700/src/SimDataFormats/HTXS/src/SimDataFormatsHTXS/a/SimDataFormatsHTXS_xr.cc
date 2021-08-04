// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIslc7_amd64_gcc700dIsrcdISimDataFormatsdIHTXSdIsrcdISimDataFormatsHTXSdIadISimDataFormatsHTXS_xr

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
#include "src/SimDataFormats/HTXS/src/classes.h"

// Header files passed via #pragma extra_include

namespace ROOT {
   static TClass *HTXScLcLHiggsClassification_Dictionary();
   static void HTXScLcLHiggsClassification_TClassManip(TClass*);
   static void *new_HTXScLcLHiggsClassification(void *p = 0);
   static void *newArray_HTXScLcLHiggsClassification(Long_t size, void *p);
   static void delete_HTXScLcLHiggsClassification(void *p);
   static void deleteArray_HTXScLcLHiggsClassification(void *p);
   static void destruct_HTXScLcLHiggsClassification(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::HTXS::HiggsClassification*)
   {
      ::HTXS::HiggsClassification *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::HTXS::HiggsClassification));
      static ::ROOT::TGenericClassInfo 
         instance("HTXS::HiggsClassification", "SimDataFormats/HTXS/interface/HiggsTemplateCrossSections.h", 514,
                  typeid(::HTXS::HiggsClassification), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &HTXScLcLHiggsClassification_Dictionary, isa_proxy, 4,
                  sizeof(::HTXS::HiggsClassification) );
      instance.SetNew(&new_HTXScLcLHiggsClassification);
      instance.SetNewArray(&newArray_HTXScLcLHiggsClassification);
      instance.SetDelete(&delete_HTXScLcLHiggsClassification);
      instance.SetDeleteArray(&deleteArray_HTXScLcLHiggsClassification);
      instance.SetDestructor(&destruct_HTXScLcLHiggsClassification);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::HTXS::HiggsClassification*)
   {
      return GenerateInitInstanceLocal((::HTXS::HiggsClassification*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::HTXS::HiggsClassification*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *HTXScLcLHiggsClassification_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::HTXS::HiggsClassification*)0x0)->GetClass();
      HTXScLcLHiggsClassification_TClassManip(theClass);
   return theClass;
   }

   static void HTXScLcLHiggsClassification_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *edmcLcLWrapperlEHTXScLcLHiggsClassificationgR_Dictionary();
   static void edmcLcLWrapperlEHTXScLcLHiggsClassificationgR_TClassManip(TClass*);
   static void *new_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p = 0);
   static void *newArray_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(Long_t size, void *p);
   static void delete_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p);
   static void deleteArray_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p);
   static void destruct_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::edm::Wrapper<HTXS::HiggsClassification>*)
   {
      ::edm::Wrapper<HTXS::HiggsClassification> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::edm::Wrapper<HTXS::HiggsClassification>));
      static ::ROOT::TGenericClassInfo 
         instance("edm::Wrapper<HTXS::HiggsClassification>", ::edm::Wrapper<HTXS::HiggsClassification>::Class_Version(), "DataFormats/Common/interface/Wrapper.h", 25,
                  typeid(::edm::Wrapper<HTXS::HiggsClassification>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &edmcLcLWrapperlEHTXScLcLHiggsClassificationgR_Dictionary, isa_proxy, 4,
                  sizeof(::edm::Wrapper<HTXS::HiggsClassification>) );
      instance.SetNew(&new_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR);
      instance.SetNewArray(&newArray_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR);
      instance.SetDelete(&delete_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR);
      instance.SetDeleteArray(&deleteArray_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR);
      instance.SetDestructor(&destruct_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::edm::Wrapper<HTXS::HiggsClassification>*)
   {
      return GenerateInitInstanceLocal((::edm::Wrapper<HTXS::HiggsClassification>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::edm::Wrapper<HTXS::HiggsClassification>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *edmcLcLWrapperlEHTXScLcLHiggsClassificationgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::edm::Wrapper<HTXS::HiggsClassification>*)0x0)->GetClass();
      edmcLcLWrapperlEHTXScLcLHiggsClassificationgR_TClassManip(theClass);
   return theClass;
   }

   static void edmcLcLWrapperlEHTXScLcLHiggsClassificationgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_HTXScLcLHiggsClassification(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) ::HTXS::HiggsClassification : new ::HTXS::HiggsClassification;
   }
   static void *newArray_HTXScLcLHiggsClassification(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) ::HTXS::HiggsClassification[nElements] : new ::HTXS::HiggsClassification[nElements];
   }
   // Wrapper around operator delete
   static void delete_HTXScLcLHiggsClassification(void *p) {
      delete ((::HTXS::HiggsClassification*)p);
   }
   static void deleteArray_HTXScLcLHiggsClassification(void *p) {
      delete [] ((::HTXS::HiggsClassification*)p);
   }
   static void destruct_HTXScLcLHiggsClassification(void *p) {
      typedef ::HTXS::HiggsClassification current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::HTXS::HiggsClassification

namespace ROOT {
   // Wrappers around operator new
   static void *new_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) ::edm::Wrapper<HTXS::HiggsClassification> : new ::edm::Wrapper<HTXS::HiggsClassification>;
   }
   static void *newArray_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) ::edm::Wrapper<HTXS::HiggsClassification>[nElements] : new ::edm::Wrapper<HTXS::HiggsClassification>[nElements];
   }
   // Wrapper around operator delete
   static void delete_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p) {
      delete ((::edm::Wrapper<HTXS::HiggsClassification>*)p);
   }
   static void deleteArray_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p) {
      delete [] ((::edm::Wrapper<HTXS::HiggsClassification>*)p);
   }
   static void destruct_edmcLcLWrapperlEHTXScLcLHiggsClassificationgR(void *p) {
      typedef ::edm::Wrapper<HTXS::HiggsClassification> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::edm::Wrapper<HTXS::HiggsClassification>

namespace {
  void TriggerDictionaryInitialization_SimDataFormatsHTXS_xr_Impl() {
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
#line 1 "SimDataFormatsHTXS_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_Autoloading_Map;
namespace HTXS{struct __attribute__((annotate("$clingAutoload$SimDataFormats/HTXS/interface/HiggsTemplateCrossSections.h")))  HiggsClassification;}
namespace edm{template <typename T> class __attribute__((annotate("$clingAutoload$DataFormats/Common/interface/Wrapper.h")))  Wrapper;
}
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "SimDataFormatsHTXS_xr dictionary payload"

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
#include "SimDataFormats/HTXS/interface/HiggsTemplateCrossSections.h"
#include "DataFormats/Common/interface/Wrapper.h"


#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[]={
"HTXS::HiggsClassification", payloadCode, "@",
"edm::Wrapper<HTXS::HiggsClassification>", payloadCode, "@",
nullptr};

    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("SimDataFormatsHTXS_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_SimDataFormatsHTXS_xr_Impl, {}, classesHeaders, /*has no C++ module*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_SimDataFormatsHTXS_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_SimDataFormatsHTXS_xr() {
  TriggerDictionaryInitialization_SimDataFormatsHTXS_xr_Impl();
}
