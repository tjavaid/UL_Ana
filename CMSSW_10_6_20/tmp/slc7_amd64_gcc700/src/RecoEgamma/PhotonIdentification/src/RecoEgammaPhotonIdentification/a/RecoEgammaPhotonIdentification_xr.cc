// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIslc7_amd64_gcc700dIsrcdIRecoEgammadIPhotonIdentificationdIsrcdIRecoEgammaPhotonIdentificationdIadIRecoEgammaPhotonIdentification_xr

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
#include "src/RecoEgamma/PhotonIdentification/src/classes.h"

// Header files passed via #pragma extra_include

namespace ROOT {
   static TClass *VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR_Dictionary();
   static void VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR_TClassManip(TClass*);
   static void *new_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p = 0);
   static void *newArray_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(Long_t size, void *p);
   static void delete_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p);
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p);
   static void destruct_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::VersionedSelector<edm::Ptr<reco::Photon> >*)
   {
      ::VersionedSelector<edm::Ptr<reco::Photon> > *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::VersionedSelector<edm::Ptr<reco::Photon> >));
      static ::ROOT::TGenericClassInfo 
         instance("VersionedSelector<edm::Ptr<reco::Photon> >", "PhysicsTools/SelectorUtils/interface/VersionedSelector.h", 46,
                  typeid(::VersionedSelector<edm::Ptr<reco::Photon> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR_Dictionary, isa_proxy, 4,
                  sizeof(::VersionedSelector<edm::Ptr<reco::Photon> >) );
      instance.SetNew(&new_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR);
      instance.SetNewArray(&newArray_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR);
      instance.SetDelete(&delete_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR);
      instance.SetDeleteArray(&deleteArray_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR);
      instance.SetDestructor(&destruct_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::VersionedSelector<edm::Ptr<reco::Photon> >*)
   {
      return GenerateInitInstanceLocal((::VersionedSelector<edm::Ptr<reco::Photon> >*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<reco::Photon> >*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<reco::Photon> >*)0x0)->GetClass();
      VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR_Dictionary();
   static void VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR_TClassManip(TClass*);
   static void *new_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p = 0);
   static void *newArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(Long_t size, void *p);
   static void delete_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p);
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p);
   static void destruct_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::VersionedSelector<edm::Ptr<pat::Photon> >*)
   {
      ::VersionedSelector<edm::Ptr<pat::Photon> > *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::VersionedSelector<edm::Ptr<pat::Photon> >));
      static ::ROOT::TGenericClassInfo 
         instance("VersionedSelector<edm::Ptr<pat::Photon> >", "PhysicsTools/SelectorUtils/interface/VersionedSelector.h", 46,
                  typeid(::VersionedSelector<edm::Ptr<pat::Photon> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR_Dictionary, isa_proxy, 4,
                  sizeof(::VersionedSelector<edm::Ptr<pat::Photon> >) );
      instance.SetNew(&new_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR);
      instance.SetNewArray(&newArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR);
      instance.SetDelete(&delete_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR);
      instance.SetDeleteArray(&deleteArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR);
      instance.SetDestructor(&destruct_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::VersionedSelector<edm::Ptr<pat::Photon> >*)
   {
      return GenerateInitInstanceLocal((::VersionedSelector<edm::Ptr<pat::Photon> >*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<pat::Photon> >*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<pat::Photon> >*)0x0)->GetClass();
      VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakeVersionedSelectorlErecocLcLPhotongR_Dictionary();
   static void MakeVersionedSelectorlErecocLcLPhotongR_TClassManip(TClass*);
   static void *new_MakeVersionedSelectorlErecocLcLPhotongR(void *p = 0);
   static void *newArray_MakeVersionedSelectorlErecocLcLPhotongR(Long_t size, void *p);
   static void delete_MakeVersionedSelectorlErecocLcLPhotongR(void *p);
   static void deleteArray_MakeVersionedSelectorlErecocLcLPhotongR(void *p);
   static void destruct_MakeVersionedSelectorlErecocLcLPhotongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakeVersionedSelector<reco::Photon>*)
   {
      ::MakeVersionedSelector<reco::Photon> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakeVersionedSelector<reco::Photon>));
      static ::ROOT::TGenericClassInfo 
         instance("MakeVersionedSelector<reco::Photon>", "PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h", 8,
                  typeid(::MakeVersionedSelector<reco::Photon>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakeVersionedSelectorlErecocLcLPhotongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakeVersionedSelector<reco::Photon>) );
      instance.SetNew(&new_MakeVersionedSelectorlErecocLcLPhotongR);
      instance.SetNewArray(&newArray_MakeVersionedSelectorlErecocLcLPhotongR);
      instance.SetDelete(&delete_MakeVersionedSelectorlErecocLcLPhotongR);
      instance.SetDeleteArray(&deleteArray_MakeVersionedSelectorlErecocLcLPhotongR);
      instance.SetDestructor(&destruct_MakeVersionedSelectorlErecocLcLPhotongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakeVersionedSelector<reco::Photon>*)
   {
      return GenerateInitInstanceLocal((::MakeVersionedSelector<reco::Photon>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakeVersionedSelector<reco::Photon>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakeVersionedSelectorlErecocLcLPhotongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakeVersionedSelector<reco::Photon>*)0x0)->GetClass();
      MakeVersionedSelectorlErecocLcLPhotongR_TClassManip(theClass);
   return theClass;
   }

   static void MakeVersionedSelectorlErecocLcLPhotongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakeVersionedSelectorlEpatcLcLPhotongR_Dictionary();
   static void MakeVersionedSelectorlEpatcLcLPhotongR_TClassManip(TClass*);
   static void *new_MakeVersionedSelectorlEpatcLcLPhotongR(void *p = 0);
   static void *newArray_MakeVersionedSelectorlEpatcLcLPhotongR(Long_t size, void *p);
   static void delete_MakeVersionedSelectorlEpatcLcLPhotongR(void *p);
   static void deleteArray_MakeVersionedSelectorlEpatcLcLPhotongR(void *p);
   static void destruct_MakeVersionedSelectorlEpatcLcLPhotongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakeVersionedSelector<pat::Photon>*)
   {
      ::MakeVersionedSelector<pat::Photon> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakeVersionedSelector<pat::Photon>));
      static ::ROOT::TGenericClassInfo 
         instance("MakeVersionedSelector<pat::Photon>", "PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h", 8,
                  typeid(::MakeVersionedSelector<pat::Photon>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakeVersionedSelectorlEpatcLcLPhotongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakeVersionedSelector<pat::Photon>) );
      instance.SetNew(&new_MakeVersionedSelectorlEpatcLcLPhotongR);
      instance.SetNewArray(&newArray_MakeVersionedSelectorlEpatcLcLPhotongR);
      instance.SetDelete(&delete_MakeVersionedSelectorlEpatcLcLPhotongR);
      instance.SetDeleteArray(&deleteArray_MakeVersionedSelectorlEpatcLcLPhotongR);
      instance.SetDestructor(&destruct_MakeVersionedSelectorlEpatcLcLPhotongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakeVersionedSelector<pat::Photon>*)
   {
      return GenerateInitInstanceLocal((::MakeVersionedSelector<pat::Photon>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakeVersionedSelector<pat::Photon>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakeVersionedSelectorlEpatcLcLPhotongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakeVersionedSelector<pat::Photon>*)0x0)->GetClass();
      MakeVersionedSelectorlEpatcLcLPhotongR_TClassManip(theClass);
   return theClass;
   }

   static void MakeVersionedSelectorlEpatcLcLPhotongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR_Dictionary();
   static void MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR_TClassManip(TClass*);
   static void *new_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p = 0);
   static void *newArray_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(Long_t size, void *p);
   static void delete_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p);
   static void deleteArray_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p);
   static void destruct_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>*)
   {
      ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>));
      static ::ROOT::TGenericClassInfo 
         instance("MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>", "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h", 7,
                  typeid(::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>) );
      instance.SetNew(&new_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR);
      instance.SetNewArray(&newArray_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR);
      instance.SetDelete(&delete_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR);
      instance.SetDeleteArray(&deleteArray_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR);
      instance.SetDestructor(&destruct_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>*)
   {
      return GenerateInitInstanceLocal((::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>*)0x0)->GetClass();
      MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR_TClassManip(theClass);
   return theClass;
   }

   static void MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR_Dictionary();
   static void MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR_TClassManip(TClass*);
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p = 0);
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(Long_t size, void *p);
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p);
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p);
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>*)
   {
      ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>));
      static ::ROOT::TGenericClassInfo 
         instance("MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>", "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h", 7,
                  typeid(::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>) );
      instance.SetNew(&new_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR);
      instance.SetNewArray(&newArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR);
      instance.SetDelete(&delete_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR);
      instance.SetDeleteArray(&deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR);
      instance.SetDestructor(&destruct_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>*)
   {
      return GenerateInitInstanceLocal((::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>*)0x0)->GetClass();
      MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR_TClassManip(theClass);
   return theClass;
   }

   static void MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR_Dictionary();
   static void MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR_TClassManip(TClass*);
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p = 0);
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(Long_t size, void *p);
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p);
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p);
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>*)
   {
      ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>));
      static ::ROOT::TGenericClassInfo 
         instance("MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>", "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h", 7,
                  typeid(::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>) );
      instance.SetNew(&new_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR);
      instance.SetNewArray(&newArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR);
      instance.SetDelete(&delete_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR);
      instance.SetDeleteArray(&deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR);
      instance.SetDestructor(&destruct_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>*)
   {
      return GenerateInitInstanceLocal((::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>*)0x0)->GetClass();
      MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR_TClassManip(theClass);
   return theClass;
   }

   static void MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *PrintVIDToStringlErecocLcLPhotongR_Dictionary();
   static void PrintVIDToStringlErecocLcLPhotongR_TClassManip(TClass*);
   static void *new_PrintVIDToStringlErecocLcLPhotongR(void *p = 0);
   static void *newArray_PrintVIDToStringlErecocLcLPhotongR(Long_t size, void *p);
   static void delete_PrintVIDToStringlErecocLcLPhotongR(void *p);
   static void deleteArray_PrintVIDToStringlErecocLcLPhotongR(void *p);
   static void destruct_PrintVIDToStringlErecocLcLPhotongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::PrintVIDToString<reco::Photon>*)
   {
      ::PrintVIDToString<reco::Photon> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::PrintVIDToString<reco::Photon>));
      static ::ROOT::TGenericClassInfo 
         instance("PrintVIDToString<reco::Photon>", "PhysicsTools/SelectorUtils/interface/PrintVIDToString.h", 11,
                  typeid(::PrintVIDToString<reco::Photon>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &PrintVIDToStringlErecocLcLPhotongR_Dictionary, isa_proxy, 4,
                  sizeof(::PrintVIDToString<reco::Photon>) );
      instance.SetNew(&new_PrintVIDToStringlErecocLcLPhotongR);
      instance.SetNewArray(&newArray_PrintVIDToStringlErecocLcLPhotongR);
      instance.SetDelete(&delete_PrintVIDToStringlErecocLcLPhotongR);
      instance.SetDeleteArray(&deleteArray_PrintVIDToStringlErecocLcLPhotongR);
      instance.SetDestructor(&destruct_PrintVIDToStringlErecocLcLPhotongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::PrintVIDToString<reco::Photon>*)
   {
      return GenerateInitInstanceLocal((::PrintVIDToString<reco::Photon>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::PrintVIDToString<reco::Photon>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *PrintVIDToStringlErecocLcLPhotongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::PrintVIDToString<reco::Photon>*)0x0)->GetClass();
      PrintVIDToStringlErecocLcLPhotongR_TClassManip(theClass);
   return theClass;
   }

   static void PrintVIDToStringlErecocLcLPhotongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *PrintVIDToStringlEpatcLcLPhotongR_Dictionary();
   static void PrintVIDToStringlEpatcLcLPhotongR_TClassManip(TClass*);
   static void *new_PrintVIDToStringlEpatcLcLPhotongR(void *p = 0);
   static void *newArray_PrintVIDToStringlEpatcLcLPhotongR(Long_t size, void *p);
   static void delete_PrintVIDToStringlEpatcLcLPhotongR(void *p);
   static void deleteArray_PrintVIDToStringlEpatcLcLPhotongR(void *p);
   static void destruct_PrintVIDToStringlEpatcLcLPhotongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::PrintVIDToString<pat::Photon>*)
   {
      ::PrintVIDToString<pat::Photon> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::PrintVIDToString<pat::Photon>));
      static ::ROOT::TGenericClassInfo 
         instance("PrintVIDToString<pat::Photon>", "PhysicsTools/SelectorUtils/interface/PrintVIDToString.h", 11,
                  typeid(::PrintVIDToString<pat::Photon>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &PrintVIDToStringlEpatcLcLPhotongR_Dictionary, isa_proxy, 4,
                  sizeof(::PrintVIDToString<pat::Photon>) );
      instance.SetNew(&new_PrintVIDToStringlEpatcLcLPhotongR);
      instance.SetNewArray(&newArray_PrintVIDToStringlEpatcLcLPhotongR);
      instance.SetDelete(&delete_PrintVIDToStringlEpatcLcLPhotongR);
      instance.SetDeleteArray(&deleteArray_PrintVIDToStringlEpatcLcLPhotongR);
      instance.SetDestructor(&destruct_PrintVIDToStringlEpatcLcLPhotongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::PrintVIDToString<pat::Photon>*)
   {
      return GenerateInitInstanceLocal((::PrintVIDToString<pat::Photon>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::PrintVIDToString<pat::Photon>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *PrintVIDToStringlEpatcLcLPhotongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::PrintVIDToString<pat::Photon>*)0x0)->GetClass();
      PrintVIDToStringlEpatcLcLPhotongR_TClassManip(theClass);
   return theClass;
   }

   static void PrintVIDToStringlEpatcLcLPhotongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p) {
      return  p ? new(p) ::VersionedSelector<edm::Ptr<reco::Photon> > : new ::VersionedSelector<edm::Ptr<reco::Photon> >;
   }
   static void *newArray_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(Long_t nElements, void *p) {
      return p ? new(p) ::VersionedSelector<edm::Ptr<reco::Photon> >[nElements] : new ::VersionedSelector<edm::Ptr<reco::Photon> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p) {
      delete ((::VersionedSelector<edm::Ptr<reco::Photon> >*)p);
   }
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p) {
      delete [] ((::VersionedSelector<edm::Ptr<reco::Photon> >*)p);
   }
   static void destruct_VersionedSelectorlEedmcLcLPtrlErecocLcLPhotongRsPgR(void *p) {
      typedef ::VersionedSelector<edm::Ptr<reco::Photon> > current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::VersionedSelector<edm::Ptr<reco::Photon> >

namespace ROOT {
   // Wrappers around operator new
   static void *new_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p) {
      return  p ? new(p) ::VersionedSelector<edm::Ptr<pat::Photon> > : new ::VersionedSelector<edm::Ptr<pat::Photon> >;
   }
   static void *newArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(Long_t nElements, void *p) {
      return p ? new(p) ::VersionedSelector<edm::Ptr<pat::Photon> >[nElements] : new ::VersionedSelector<edm::Ptr<pat::Photon> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p) {
      delete ((::VersionedSelector<edm::Ptr<pat::Photon> >*)p);
   }
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p) {
      delete [] ((::VersionedSelector<edm::Ptr<pat::Photon> >*)p);
   }
   static void destruct_VersionedSelectorlEedmcLcLPtrlEpatcLcLPhotongRsPgR(void *p) {
      typedef ::VersionedSelector<edm::Ptr<pat::Photon> > current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::VersionedSelector<edm::Ptr<pat::Photon> >

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakeVersionedSelectorlErecocLcLPhotongR(void *p) {
      return  p ? new(p) ::MakeVersionedSelector<reco::Photon> : new ::MakeVersionedSelector<reco::Photon>;
   }
   static void *newArray_MakeVersionedSelectorlErecocLcLPhotongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakeVersionedSelector<reco::Photon>[nElements] : new ::MakeVersionedSelector<reco::Photon>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakeVersionedSelectorlErecocLcLPhotongR(void *p) {
      delete ((::MakeVersionedSelector<reco::Photon>*)p);
   }
   static void deleteArray_MakeVersionedSelectorlErecocLcLPhotongR(void *p) {
      delete [] ((::MakeVersionedSelector<reco::Photon>*)p);
   }
   static void destruct_MakeVersionedSelectorlErecocLcLPhotongR(void *p) {
      typedef ::MakeVersionedSelector<reco::Photon> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakeVersionedSelector<reco::Photon>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakeVersionedSelectorlEpatcLcLPhotongR(void *p) {
      return  p ? new(p) ::MakeVersionedSelector<pat::Photon> : new ::MakeVersionedSelector<pat::Photon>;
   }
   static void *newArray_MakeVersionedSelectorlEpatcLcLPhotongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakeVersionedSelector<pat::Photon>[nElements] : new ::MakeVersionedSelector<pat::Photon>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakeVersionedSelectorlEpatcLcLPhotongR(void *p) {
      delete ((::MakeVersionedSelector<pat::Photon>*)p);
   }
   static void deleteArray_MakeVersionedSelectorlEpatcLcLPhotongR(void *p) {
      delete [] ((::MakeVersionedSelector<pat::Photon>*)p);
   }
   static void destruct_MakeVersionedSelectorlEpatcLcLPhotongR(void *p) {
      typedef ::MakeVersionedSelector<pat::Photon> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakeVersionedSelector<pat::Photon>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p) {
      return  p ? new(p) ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon> : new ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>;
   }
   static void *newArray_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>[nElements] : new ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p) {
      delete ((::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>*)p);
   }
   static void deleteArray_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p) {
      delete [] ((::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>*)p);
   }
   static void destruct_MakePtrFromCollectionlEvectorlErecocLcLPhotongRcOrecocLcLPhotoncOrecocLcLPhotongR(void *p) {
      typedef ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p) {
      return  p ? new(p) ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon> : new ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>;
   }
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>[nElements] : new ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p) {
      delete ((::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>*)p);
   }
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p) {
      delete [] ((::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>*)p);
   }
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOpatcLcLPhotongR(void *p) {
      typedef ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p) {
      return  p ? new(p) ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon> : new ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>;
   }
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>[nElements] : new ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p) {
      delete ((::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>*)p);
   }
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p) {
      delete [] ((::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>*)p);
   }
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLPhotongRcOpatcLcLPhotoncOrecocLcLPhotongR(void *p) {
      typedef ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>

namespace ROOT {
   // Wrappers around operator new
   static void *new_PrintVIDToStringlErecocLcLPhotongR(void *p) {
      return  p ? new(p) ::PrintVIDToString<reco::Photon> : new ::PrintVIDToString<reco::Photon>;
   }
   static void *newArray_PrintVIDToStringlErecocLcLPhotongR(Long_t nElements, void *p) {
      return p ? new(p) ::PrintVIDToString<reco::Photon>[nElements] : new ::PrintVIDToString<reco::Photon>[nElements];
   }
   // Wrapper around operator delete
   static void delete_PrintVIDToStringlErecocLcLPhotongR(void *p) {
      delete ((::PrintVIDToString<reco::Photon>*)p);
   }
   static void deleteArray_PrintVIDToStringlErecocLcLPhotongR(void *p) {
      delete [] ((::PrintVIDToString<reco::Photon>*)p);
   }
   static void destruct_PrintVIDToStringlErecocLcLPhotongR(void *p) {
      typedef ::PrintVIDToString<reco::Photon> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::PrintVIDToString<reco::Photon>

namespace ROOT {
   // Wrappers around operator new
   static void *new_PrintVIDToStringlEpatcLcLPhotongR(void *p) {
      return  p ? new(p) ::PrintVIDToString<pat::Photon> : new ::PrintVIDToString<pat::Photon>;
   }
   static void *newArray_PrintVIDToStringlEpatcLcLPhotongR(Long_t nElements, void *p) {
      return p ? new(p) ::PrintVIDToString<pat::Photon>[nElements] : new ::PrintVIDToString<pat::Photon>[nElements];
   }
   // Wrapper around operator delete
   static void delete_PrintVIDToStringlEpatcLcLPhotongR(void *p) {
      delete ((::PrintVIDToString<pat::Photon>*)p);
   }
   static void deleteArray_PrintVIDToStringlEpatcLcLPhotongR(void *p) {
      delete [] ((::PrintVIDToString<pat::Photon>*)p);
   }
   static void destruct_PrintVIDToStringlEpatcLcLPhotongR(void *p) {
      typedef ::PrintVIDToString<pat::Photon> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::PrintVIDToString<pat::Photon>

namespace {
  void TriggerDictionaryInitialization_RecoEgammaPhotonIdentification_xr_Impl() {
    static const char* headers[] = {
0    };
    static const char* includePaths[] = {
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/src",
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/poison",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/cmssw/CMSSW_10_6_20/src",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/coral/CORAL_2_3_21-pafccj7/include/LCG",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/lcg/root/6.14.09-pafccj6/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/pcre/8.37-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/boost/1.67.0-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/bz2lib/1.0.6-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/clhep/2.4.0.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/gsl/2.2.1-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/hepmc/2.06.07-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/libuuid/2.22.2-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/openssl/1.0.2d-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/tbb/2019_U3-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/cms/vdt/0.4.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/xerces-c/3.1.3-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/xz/5.2.2-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/zlib-x86_64/1.2.11-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/eigen/e4c107b451c52c9ab2d7b7fa4194ee35332916ec-pafccj2/include/eigen3",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/md5/1.0.0-pafccj/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/OpenBLAS/0.3.5-nmpfii2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/tinyxml2/6.2.0-pafccj2/include",
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/lcg/root/6.14.09-pafccj6/include",
"/afs/cern.ch/work/t/tjavaid/BUF_ntuplizer/UL/CMSSW_10_6_20/",
0
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "RecoEgammaPhotonIdentification_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_Autoloading_Map;
namespace reco{class __attribute__((annotate("$clingAutoload$DataFormats/EgammaCandidates/interface/Photon.h")))  __attribute__((annotate("$clingAutoload$DataFormats/PatCandidates/interface/Photon.h")))  Photon;}
namespace edm{template <typename T> class __attribute__((annotate("$clingAutoload$DataFormats/Common/interface/Ptr.h")))  __attribute__((annotate("$clingAutoload$DataFormats/PatCandidates/interface/Photon.h")))  Ptr;
}
template <class T> class __attribute__((annotate("$clingAutoload$PhysicsTools/SelectorUtils/interface/VersionedSelector.h")))  VersionedSelector;

namespace pat{class __attribute__((annotate("$clingAutoload$DataFormats/PatCandidates/interface/Photon.h")))  Photon;}
template <class PhysObj> struct __attribute__((annotate("$clingAutoload$PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h")))  MakeVersionedSelector;

namespace std{template <typename _Tp> class __attribute__((annotate("$clingAutoload$bits/allocator.h")))  __attribute__((annotate("$clingAutoload$string")))  allocator;
}
template <typename T> struct __attribute__((annotate("$clingAutoload$PhysicsTools/SelectorUtils/interface/PrintVIDToString.h")))  PrintVIDToString;

)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "RecoEgammaPhotonIdentification_xr dictionary payload"

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
#ifndef EIGEN_DONT_PARALLELIZE
  #define EIGEN_DONT_PARALLELIZE 1
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

//Add includes for your classes here
#include "DataFormats/PatCandidates/interface/Photon.h"
#include "DataFormats/EgammaCandidates/interface/PhotonFwd.h"

#include "PhysicsTools/SelectorUtils/interface/VersionedSelector.h"
#include "PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h"
#include "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h"
#include "PhysicsTools/SelectorUtils/interface/PrintVIDToString.h"

namespace RecoEgamma_PhotonIdentification {
  struct dictionary {    
    typedef VersionedSelector<edm::Ptr<reco::Photon> > VersionedPhotonSelector;
    typedef MakeVersionedSelector<reco::Photon> MakeVersionedPhotonSelector;
    typedef MakePtrFromCollection<reco::PhotonCollection> MakePhoPtrFromCollection;
    typedef PrintVIDToString<reco::Photon> PrintPhotonVIDToString;

    typedef VersionedSelector<edm::Ptr<pat::Photon> > VersionedPatPhotonSelector;
    typedef MakeVersionedSelector<pat::Photon> MakeVersionedPatPhotonSelector;
    typedef MakePtrFromCollection<std::vector<pat::Photon> > MakePatPtrFromCollection;
    typedef PrintVIDToString<pat::Photon> PrintPatPhotonVIDToString;

    //for using the selectors in python
    VersionedPhotonSelector vGsfElectronSelector;    
    MakeVersionedPhotonSelector vMakePhotonVersionedSelector;
    PrintPhotonVIDToString vPhoPrintVIDToString;
    MakePhoPtrFromCollection vPhoMakePtrFromCollection;  
    
    VersionedPatPhotonSelector vPatPhotonSelector; 
    MakeVersionedPatPhotonSelector vMakePatPhotonVersionedSelector;
    PrintPatPhotonVIDToString vPatPrintVIDToString;
    MakePatPtrFromCollection vPatMakePtrFromCollection;
    MakePtrFromCollection<std::vector<pat::Photon>, pat::Photon, reco::Photon> vPatToPhoMakePtrFromCollection;
    
  };
}

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[]={
"", payloadCode, "@",
"MakePtrFromCollection<vector<pat::Photon>,pat::Photon,pat::Photon>", payloadCode, "@",
"MakePtrFromCollection<vector<pat::Photon>,pat::Photon,reco::Photon>", payloadCode, "@",
"MakePtrFromCollection<vector<reco::Photon>,reco::Photon,reco::Photon>", payloadCode, "@",
"MakeVersionedSelector<pat::Photon>", payloadCode, "@",
"MakeVersionedSelector<reco::Photon>", payloadCode, "@",
"PrintVIDToString<pat::Photon>", payloadCode, "@",
"PrintVIDToString<reco::Photon>", payloadCode, "@",
"VersionedSelector<edm::Ptr<pat::Photon> >", payloadCode, "@",
"VersionedSelector<edm::Ptr<reco::Photon> >", payloadCode, "@",
nullptr};

    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("RecoEgammaPhotonIdentification_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_RecoEgammaPhotonIdentification_xr_Impl, {}, classesHeaders, /*has no C++ module*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_RecoEgammaPhotonIdentification_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_RecoEgammaPhotonIdentification_xr() {
  TriggerDictionaryInitialization_RecoEgammaPhotonIdentification_xr_Impl();
}
