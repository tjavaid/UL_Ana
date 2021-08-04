// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIslc7_amd64_gcc700dIsrcdIFireworksdIFWInterfacedIsrcdIFireworksFWInterfacedIadIFireworksFWInterface_xr

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
#include "src/Fireworks/FWInterface/src/classes.h"

// Header files passed via #pragma extra_include

namespace ROOT {
   static void delete_FWPathsPopup(void *p);
   static void deleteArray_FWPathsPopup(void *p);
   static void destruct_FWPathsPopup(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::FWPathsPopup*)
   {
      ::FWPathsPopup *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::FWPathsPopup >(0);
      static ::ROOT::TGenericClassInfo 
         instance("FWPathsPopup", ::FWPathsPopup::Class_Version(), "Fireworks/FWInterface/src/FWPathsPopup.h", 28,
                  typeid(::FWPathsPopup), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::FWPathsPopup::Dictionary, isa_proxy, 4,
                  sizeof(::FWPathsPopup) );
      instance.SetDelete(&delete_FWPathsPopup);
      instance.SetDeleteArray(&deleteArray_FWPathsPopup);
      instance.SetDestructor(&destruct_FWPathsPopup);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::FWPathsPopup*)
   {
      return GenerateInitInstanceLocal((::FWPathsPopup*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::FWPathsPopup*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

//______________________________________________________________________________
atomic_TClass_ptr FWPathsPopup::fgIsA(0);  // static to hold class pointer

//______________________________________________________________________________
const char *FWPathsPopup::Class_Name()
{
   return "FWPathsPopup";
}

//______________________________________________________________________________
const char *FWPathsPopup::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::FWPathsPopup*)0x0)->GetImplFileName();
}

//______________________________________________________________________________
int FWPathsPopup::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::FWPathsPopup*)0x0)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *FWPathsPopup::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::FWPathsPopup*)0x0)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *FWPathsPopup::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::FWPathsPopup*)0x0)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
void FWPathsPopup::Streamer(TBuffer &R__b)
{
   // Stream an object of class FWPathsPopup.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(FWPathsPopup::Class(),this);
   } else {
      R__b.WriteClassBuffer(FWPathsPopup::Class(),this);
   }
}

namespace ROOT {
   // Wrapper around operator delete
   static void delete_FWPathsPopup(void *p) {
      delete ((::FWPathsPopup*)p);
   }
   static void deleteArray_FWPathsPopup(void *p) {
      delete [] ((::FWPathsPopup*)p);
   }
   static void destruct_FWPathsPopup(void *p) {
      typedef ::FWPathsPopup current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::FWPathsPopup

namespace {
  void TriggerDictionaryInitialization_FireworksFWInterface_xr_Impl() {
    static const char* headers[] = {
0    };
    static const char* includePaths[] = {
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/src",
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/poison",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/cmssw/CMSSW_10_6_20/src",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/coral/CORAL_2_3_21-pafccj7/include/LCG",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/lcg/root/6.14.09-pafccj6/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/boost/1.67.0-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/libpng/1.6.16-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/pcre/8.37-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/bz2lib/1.0.6-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/clhep/2.4.0.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/gsl/2.2.1-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/libjpeg-turbo/2.0.1-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/libuuid/2.22.2-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/python/2.7.14-pafccj/include/python2.7",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/sigcpp/2.6.2-pafccj/include/sigc++-2.0",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/tbb/2019_U3-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/vdt/0.4.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/xerces-c/3.1.3-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/xz/5.2.2-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/zlib-x86_64/1.2.11-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/md5/1.0.0-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/OpenBLAS/0.3.5-nmpfii2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/py2-pybind11/2.2.4-pafccj/include/python2.7",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/tinyxml2/6.2.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/lcg/root/6.14.09-pafccj6/include",
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/",
0
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "FireworksFWInterface_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_Autoloading_Map;
class __attribute__((annotate("$clingAutoload$Fireworks/FWInterface/src/FWPathsPopup.h")))  FWPathsPopup;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "FireworksFWInterface_xr dictionary payload"

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
#include "Fireworks/FWInterface/src/FWPathsPopup.h"


#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[]={
"FWPathsPopup", payloadCode, "@",
nullptr};

    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("FireworksFWInterface_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_FireworksFWInterface_xr_Impl, {}, classesHeaders, /*has no C++ module*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_FireworksFWInterface_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_FireworksFWInterface_xr() {
  TriggerDictionaryInitialization_FireworksFWInterface_xr_Impl();
}
