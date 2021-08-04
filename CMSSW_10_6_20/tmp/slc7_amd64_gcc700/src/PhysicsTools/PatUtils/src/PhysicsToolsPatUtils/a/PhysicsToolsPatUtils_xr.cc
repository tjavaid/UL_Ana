// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIslc7_amd64_gcc700dIsrcdIPhysicsToolsdIPatUtilsdIsrcdIPhysicsToolsPatUtilsdIadIPhysicsToolsPatUtils_xr

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
#include "src/PhysicsTools/PatUtils/src/classes.h"

// Header files passed via #pragma extra_include

namespace ROOT {
   static TClass *patcLcLDiObjectProxy_Dictionary();
   static void patcLcLDiObjectProxy_TClassManip(TClass*);
   static void *new_patcLcLDiObjectProxy(void *p = 0);
   static void *newArray_patcLcLDiObjectProxy(Long_t size, void *p);
   static void delete_patcLcLDiObjectProxy(void *p);
   static void deleteArray_patcLcLDiObjectProxy(void *p);
   static void destruct_patcLcLDiObjectProxy(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::pat::DiObjectProxy*)
   {
      ::pat::DiObjectProxy *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::pat::DiObjectProxy));
      static ::ROOT::TGenericClassInfo 
         instance("pat::DiObjectProxy", "PhysicsTools/PatUtils/interface/PATDiObjectProxy.h", 19,
                  typeid(::pat::DiObjectProxy), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &patcLcLDiObjectProxy_Dictionary, isa_proxy, 4,
                  sizeof(::pat::DiObjectProxy) );
      instance.SetNew(&new_patcLcLDiObjectProxy);
      instance.SetNewArray(&newArray_patcLcLDiObjectProxy);
      instance.SetDelete(&delete_patcLcLDiObjectProxy);
      instance.SetDeleteArray(&deleteArray_patcLcLDiObjectProxy);
      instance.SetDestructor(&destruct_patcLcLDiObjectProxy);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::pat::DiObjectProxy*)
   {
      return GenerateInitInstanceLocal((::pat::DiObjectProxy*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::pat::DiObjectProxy*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *patcLcLDiObjectProxy_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::pat::DiObjectProxy*)0x0)->GetClass();
      patcLcLDiObjectProxy_TClassManip(theClass);
   return theClass;
   }

   static void patcLcLDiObjectProxy_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_patcLcLDiObjectProxy(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) ::pat::DiObjectProxy : new ::pat::DiObjectProxy;
   }
   static void *newArray_patcLcLDiObjectProxy(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) ::pat::DiObjectProxy[nElements] : new ::pat::DiObjectProxy[nElements];
   }
   // Wrapper around operator delete
   static void delete_patcLcLDiObjectProxy(void *p) {
      delete ((::pat::DiObjectProxy*)p);
   }
   static void deleteArray_patcLcLDiObjectProxy(void *p) {
      delete [] ((::pat::DiObjectProxy*)p);
   }
   static void destruct_patcLcLDiObjectProxy(void *p) {
      typedef ::pat::DiObjectProxy current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::pat::DiObjectProxy

namespace {
  void TriggerDictionaryInitialization_PhysicsToolsPatUtils_xr_Impl() {
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
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/clhep/2.4.0.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/gsl/2.2.1-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/hepmc/2.06.07-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/libuuid/2.22.2-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/tbb/2019_U3-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/vdt/0.4.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/xerces-c/3.1.3-pafccj/include",
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
#line 1 "PhysicsToolsPatUtils_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_Autoloading_Map;
namespace pat{class __attribute__((annotate("$clingAutoload$PhysicsTools/PatUtils/interface/PATDiObjectProxy.h")))  DiObjectProxy;}
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "PhysicsToolsPatUtils_xr dictionary payload"

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
#include "PhysicsTools/PatUtils/interface/PATDiObjectProxy.h"

namespace PhysicsTools_PatUtils { struct dictionary { // apparenlty better than echo namespace PhysicsTools_PatUtils { echo namespace PhysicsTools_PatUtils {
    pat::DiObjectProxy patDiObjectProxy; 
}; }

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[]={
"pat::DiObjectProxy", payloadCode, "@",
nullptr};

    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("PhysicsToolsPatUtils_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_PhysicsToolsPatUtils_xr_Impl, {}, classesHeaders, /*has no C++ module*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_PhysicsToolsPatUtils_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_PhysicsToolsPatUtils_xr() {
  TriggerDictionaryInitialization_PhysicsToolsPatUtils_xr_Impl();
}
