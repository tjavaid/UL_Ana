// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIslc7_amd64_gcc700dIsrcdIRecoEgammadIElectronIdentificationdIsrcdIRecoEgammaElectronIdentificationdIadIRecoEgammaElectronIdentification_xr

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
#include "src/RecoEgamma/ElectronIdentification/src/classes.h"

// Header files passed via #pragma extra_include

namespace ROOT {
   static TClass *VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR_Dictionary();
   static void VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR_TClassManip(TClass*);
   static void *new_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p = 0);
   static void *newArray_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(Long_t size, void *p);
   static void delete_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p);
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p);
   static void destruct_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::VersionedSelector<edm::Ptr<reco::GsfElectron> >*)
   {
      ::VersionedSelector<edm::Ptr<reco::GsfElectron> > *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::VersionedSelector<edm::Ptr<reco::GsfElectron> >));
      static ::ROOT::TGenericClassInfo 
         instance("VersionedSelector<edm::Ptr<reco::GsfElectron> >", "PhysicsTools/SelectorUtils/interface/VersionedSelector.h", 46,
                  typeid(::VersionedSelector<edm::Ptr<reco::GsfElectron> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR_Dictionary, isa_proxy, 4,
                  sizeof(::VersionedSelector<edm::Ptr<reco::GsfElectron> >) );
      instance.SetNew(&new_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR);
      instance.SetNewArray(&newArray_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR);
      instance.SetDelete(&delete_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR);
      instance.SetDeleteArray(&deleteArray_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR);
      instance.SetDestructor(&destruct_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::VersionedSelector<edm::Ptr<reco::GsfElectron> >*)
   {
      return GenerateInitInstanceLocal((::VersionedSelector<edm::Ptr<reco::GsfElectron> >*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<reco::GsfElectron> >*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<reco::GsfElectron> >*)0x0)->GetClass();
      VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR_Dictionary();
   static void VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR_TClassManip(TClass*);
   static void *new_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p = 0);
   static void *newArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(Long_t size, void *p);
   static void delete_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p);
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p);
   static void destruct_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::VersionedSelector<edm::Ptr<pat::Electron> >*)
   {
      ::VersionedSelector<edm::Ptr<pat::Electron> > *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::VersionedSelector<edm::Ptr<pat::Electron> >));
      static ::ROOT::TGenericClassInfo 
         instance("VersionedSelector<edm::Ptr<pat::Electron> >", "PhysicsTools/SelectorUtils/interface/VersionedSelector.h", 46,
                  typeid(::VersionedSelector<edm::Ptr<pat::Electron> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR_Dictionary, isa_proxy, 4,
                  sizeof(::VersionedSelector<edm::Ptr<pat::Electron> >) );
      instance.SetNew(&new_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR);
      instance.SetNewArray(&newArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR);
      instance.SetDelete(&delete_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR);
      instance.SetDeleteArray(&deleteArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR);
      instance.SetDestructor(&destruct_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::VersionedSelector<edm::Ptr<pat::Electron> >*)
   {
      return GenerateInitInstanceLocal((::VersionedSelector<edm::Ptr<pat::Electron> >*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<pat::Electron> >*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::VersionedSelector<edm::Ptr<pat::Electron> >*)0x0)->GetClass();
      VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakeVersionedSelectorlErecocLcLGsfElectrongR_Dictionary();
   static void MakeVersionedSelectorlErecocLcLGsfElectrongR_TClassManip(TClass*);
   static void *new_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p = 0);
   static void *newArray_MakeVersionedSelectorlErecocLcLGsfElectrongR(Long_t size, void *p);
   static void delete_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p);
   static void deleteArray_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p);
   static void destruct_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakeVersionedSelector<reco::GsfElectron>*)
   {
      ::MakeVersionedSelector<reco::GsfElectron> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakeVersionedSelector<reco::GsfElectron>));
      static ::ROOT::TGenericClassInfo 
         instance("MakeVersionedSelector<reco::GsfElectron>", "PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h", 8,
                  typeid(::MakeVersionedSelector<reco::GsfElectron>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakeVersionedSelectorlErecocLcLGsfElectrongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakeVersionedSelector<reco::GsfElectron>) );
      instance.SetNew(&new_MakeVersionedSelectorlErecocLcLGsfElectrongR);
      instance.SetNewArray(&newArray_MakeVersionedSelectorlErecocLcLGsfElectrongR);
      instance.SetDelete(&delete_MakeVersionedSelectorlErecocLcLGsfElectrongR);
      instance.SetDeleteArray(&deleteArray_MakeVersionedSelectorlErecocLcLGsfElectrongR);
      instance.SetDestructor(&destruct_MakeVersionedSelectorlErecocLcLGsfElectrongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakeVersionedSelector<reco::GsfElectron>*)
   {
      return GenerateInitInstanceLocal((::MakeVersionedSelector<reco::GsfElectron>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakeVersionedSelector<reco::GsfElectron>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakeVersionedSelectorlErecocLcLGsfElectrongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakeVersionedSelector<reco::GsfElectron>*)0x0)->GetClass();
      MakeVersionedSelectorlErecocLcLGsfElectrongR_TClassManip(theClass);
   return theClass;
   }

   static void MakeVersionedSelectorlErecocLcLGsfElectrongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakeVersionedSelectorlEpatcLcLElectrongR_Dictionary();
   static void MakeVersionedSelectorlEpatcLcLElectrongR_TClassManip(TClass*);
   static void *new_MakeVersionedSelectorlEpatcLcLElectrongR(void *p = 0);
   static void *newArray_MakeVersionedSelectorlEpatcLcLElectrongR(Long_t size, void *p);
   static void delete_MakeVersionedSelectorlEpatcLcLElectrongR(void *p);
   static void deleteArray_MakeVersionedSelectorlEpatcLcLElectrongR(void *p);
   static void destruct_MakeVersionedSelectorlEpatcLcLElectrongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakeVersionedSelector<pat::Electron>*)
   {
      ::MakeVersionedSelector<pat::Electron> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakeVersionedSelector<pat::Electron>));
      static ::ROOT::TGenericClassInfo 
         instance("MakeVersionedSelector<pat::Electron>", "PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h", 8,
                  typeid(::MakeVersionedSelector<pat::Electron>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakeVersionedSelectorlEpatcLcLElectrongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakeVersionedSelector<pat::Electron>) );
      instance.SetNew(&new_MakeVersionedSelectorlEpatcLcLElectrongR);
      instance.SetNewArray(&newArray_MakeVersionedSelectorlEpatcLcLElectrongR);
      instance.SetDelete(&delete_MakeVersionedSelectorlEpatcLcLElectrongR);
      instance.SetDeleteArray(&deleteArray_MakeVersionedSelectorlEpatcLcLElectrongR);
      instance.SetDestructor(&destruct_MakeVersionedSelectorlEpatcLcLElectrongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakeVersionedSelector<pat::Electron>*)
   {
      return GenerateInitInstanceLocal((::MakeVersionedSelector<pat::Electron>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakeVersionedSelector<pat::Electron>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakeVersionedSelectorlEpatcLcLElectrongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakeVersionedSelector<pat::Electron>*)0x0)->GetClass();
      MakeVersionedSelectorlEpatcLcLElectrongR_TClassManip(theClass);
   return theClass;
   }

   static void MakeVersionedSelectorlEpatcLcLElectrongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR_Dictionary();
   static void MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR_TClassManip(TClass*);
   static void *new_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p = 0);
   static void *newArray_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(Long_t size, void *p);
   static void delete_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p);
   static void deleteArray_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p);
   static void destruct_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>*)
   {
      ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>));
      static ::ROOT::TGenericClassInfo 
         instance("MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>", "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h", 7,
                  typeid(::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>) );
      instance.SetNew(&new_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR);
      instance.SetNewArray(&newArray_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR);
      instance.SetDelete(&delete_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR);
      instance.SetDeleteArray(&deleteArray_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR);
      instance.SetDestructor(&destruct_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>*)
   {
      return GenerateInitInstanceLocal((::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>*)0x0)->GetClass();
      MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR_TClassManip(theClass);
   return theClass;
   }

   static void MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR_Dictionary();
   static void MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR_TClassManip(TClass*);
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p = 0);
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(Long_t size, void *p);
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p);
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p);
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>*)
   {
      ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>));
      static ::ROOT::TGenericClassInfo 
         instance("MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>", "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h", 7,
                  typeid(::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>) );
      instance.SetNew(&new_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR);
      instance.SetNewArray(&newArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR);
      instance.SetDelete(&delete_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR);
      instance.SetDeleteArray(&deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR);
      instance.SetDestructor(&destruct_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>*)
   {
      return GenerateInitInstanceLocal((::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>*)0x0)->GetClass();
      MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR_TClassManip(theClass);
   return theClass;
   }

   static void MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR_Dictionary();
   static void MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR_TClassManip(TClass*);
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p = 0);
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(Long_t size, void *p);
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p);
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p);
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>*)
   {
      ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>));
      static ::ROOT::TGenericClassInfo 
         instance("MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>", "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h", 7,
                  typeid(::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR_Dictionary, isa_proxy, 4,
                  sizeof(::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>) );
      instance.SetNew(&new_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR);
      instance.SetNewArray(&newArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR);
      instance.SetDelete(&delete_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR);
      instance.SetDeleteArray(&deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR);
      instance.SetDestructor(&destruct_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>*)
   {
      return GenerateInitInstanceLocal((::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>*)0x0)->GetClass();
      MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR_TClassManip(theClass);
   return theClass;
   }

   static void MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *PrintVIDToStringlErecocLcLGsfElectrongR_Dictionary();
   static void PrintVIDToStringlErecocLcLGsfElectrongR_TClassManip(TClass*);
   static void *new_PrintVIDToStringlErecocLcLGsfElectrongR(void *p = 0);
   static void *newArray_PrintVIDToStringlErecocLcLGsfElectrongR(Long_t size, void *p);
   static void delete_PrintVIDToStringlErecocLcLGsfElectrongR(void *p);
   static void deleteArray_PrintVIDToStringlErecocLcLGsfElectrongR(void *p);
   static void destruct_PrintVIDToStringlErecocLcLGsfElectrongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::PrintVIDToString<reco::GsfElectron>*)
   {
      ::PrintVIDToString<reco::GsfElectron> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::PrintVIDToString<reco::GsfElectron>));
      static ::ROOT::TGenericClassInfo 
         instance("PrintVIDToString<reco::GsfElectron>", "PhysicsTools/SelectorUtils/interface/PrintVIDToString.h", 11,
                  typeid(::PrintVIDToString<reco::GsfElectron>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &PrintVIDToStringlErecocLcLGsfElectrongR_Dictionary, isa_proxy, 4,
                  sizeof(::PrintVIDToString<reco::GsfElectron>) );
      instance.SetNew(&new_PrintVIDToStringlErecocLcLGsfElectrongR);
      instance.SetNewArray(&newArray_PrintVIDToStringlErecocLcLGsfElectrongR);
      instance.SetDelete(&delete_PrintVIDToStringlErecocLcLGsfElectrongR);
      instance.SetDeleteArray(&deleteArray_PrintVIDToStringlErecocLcLGsfElectrongR);
      instance.SetDestructor(&destruct_PrintVIDToStringlErecocLcLGsfElectrongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::PrintVIDToString<reco::GsfElectron>*)
   {
      return GenerateInitInstanceLocal((::PrintVIDToString<reco::GsfElectron>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::PrintVIDToString<reco::GsfElectron>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *PrintVIDToStringlErecocLcLGsfElectrongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::PrintVIDToString<reco::GsfElectron>*)0x0)->GetClass();
      PrintVIDToStringlErecocLcLGsfElectrongR_TClassManip(theClass);
   return theClass;
   }

   static void PrintVIDToStringlErecocLcLGsfElectrongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *PrintVIDToStringlEpatcLcLElectrongR_Dictionary();
   static void PrintVIDToStringlEpatcLcLElectrongR_TClassManip(TClass*);
   static void *new_PrintVIDToStringlEpatcLcLElectrongR(void *p = 0);
   static void *newArray_PrintVIDToStringlEpatcLcLElectrongR(Long_t size, void *p);
   static void delete_PrintVIDToStringlEpatcLcLElectrongR(void *p);
   static void deleteArray_PrintVIDToStringlEpatcLcLElectrongR(void *p);
   static void destruct_PrintVIDToStringlEpatcLcLElectrongR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::PrintVIDToString<pat::Electron>*)
   {
      ::PrintVIDToString<pat::Electron> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::PrintVIDToString<pat::Electron>));
      static ::ROOT::TGenericClassInfo 
         instance("PrintVIDToString<pat::Electron>", "PhysicsTools/SelectorUtils/interface/PrintVIDToString.h", 11,
                  typeid(::PrintVIDToString<pat::Electron>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &PrintVIDToStringlEpatcLcLElectrongR_Dictionary, isa_proxy, 4,
                  sizeof(::PrintVIDToString<pat::Electron>) );
      instance.SetNew(&new_PrintVIDToStringlEpatcLcLElectrongR);
      instance.SetNewArray(&newArray_PrintVIDToStringlEpatcLcLElectrongR);
      instance.SetDelete(&delete_PrintVIDToStringlEpatcLcLElectrongR);
      instance.SetDeleteArray(&deleteArray_PrintVIDToStringlEpatcLcLElectrongR);
      instance.SetDestructor(&destruct_PrintVIDToStringlEpatcLcLElectrongR);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::PrintVIDToString<pat::Electron>*)
   {
      return GenerateInitInstanceLocal((::PrintVIDToString<pat::Electron>*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::PrintVIDToString<pat::Electron>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *PrintVIDToStringlEpatcLcLElectrongR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::PrintVIDToString<pat::Electron>*)0x0)->GetClass();
      PrintVIDToStringlEpatcLcLElectrongR_TClassManip(theClass);
   return theClass;
   }

   static void PrintVIDToStringlEpatcLcLElectrongR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *ElectronMVAEstimatorRun2_Dictionary();
   static void ElectronMVAEstimatorRun2_TClassManip(TClass*);
   static void delete_ElectronMVAEstimatorRun2(void *p);
   static void deleteArray_ElectronMVAEstimatorRun2(void *p);
   static void destruct_ElectronMVAEstimatorRun2(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::ElectronMVAEstimatorRun2*)
   {
      ::ElectronMVAEstimatorRun2 *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::ElectronMVAEstimatorRun2));
      static ::ROOT::TGenericClassInfo 
         instance("ElectronMVAEstimatorRun2", "RecoEgamma/ElectronIdentification/interface/ElectronMVAEstimatorRun2.h", 16,
                  typeid(::ElectronMVAEstimatorRun2), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &ElectronMVAEstimatorRun2_Dictionary, isa_proxy, 4,
                  sizeof(::ElectronMVAEstimatorRun2) );
      instance.SetDelete(&delete_ElectronMVAEstimatorRun2);
      instance.SetDeleteArray(&deleteArray_ElectronMVAEstimatorRun2);
      instance.SetDestructor(&destruct_ElectronMVAEstimatorRun2);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::ElectronMVAEstimatorRun2*)
   {
      return GenerateInitInstanceLocal((::ElectronMVAEstimatorRun2*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::ElectronMVAEstimatorRun2*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *ElectronMVAEstimatorRun2_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::ElectronMVAEstimatorRun2*)0x0)->GetClass();
      ElectronMVAEstimatorRun2_TClassManip(theClass);
   return theClass;
   }

   static void ElectronMVAEstimatorRun2_TClassManip(TClass* theClass){
      theClass->CreateAttributeMap();
      TDictAttributeMap* attrMap( theClass->GetAttributeMap() );
      attrMap->AddProperty("transient","true");
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p) {
      return  p ? new(p) ::VersionedSelector<edm::Ptr<reco::GsfElectron> > : new ::VersionedSelector<edm::Ptr<reco::GsfElectron> >;
   }
   static void *newArray_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(Long_t nElements, void *p) {
      return p ? new(p) ::VersionedSelector<edm::Ptr<reco::GsfElectron> >[nElements] : new ::VersionedSelector<edm::Ptr<reco::GsfElectron> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p) {
      delete ((::VersionedSelector<edm::Ptr<reco::GsfElectron> >*)p);
   }
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p) {
      delete [] ((::VersionedSelector<edm::Ptr<reco::GsfElectron> >*)p);
   }
   static void destruct_VersionedSelectorlEedmcLcLPtrlErecocLcLGsfElectrongRsPgR(void *p) {
      typedef ::VersionedSelector<edm::Ptr<reco::GsfElectron> > current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::VersionedSelector<edm::Ptr<reco::GsfElectron> >

namespace ROOT {
   // Wrappers around operator new
   static void *new_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p) {
      return  p ? new(p) ::VersionedSelector<edm::Ptr<pat::Electron> > : new ::VersionedSelector<edm::Ptr<pat::Electron> >;
   }
   static void *newArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(Long_t nElements, void *p) {
      return p ? new(p) ::VersionedSelector<edm::Ptr<pat::Electron> >[nElements] : new ::VersionedSelector<edm::Ptr<pat::Electron> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p) {
      delete ((::VersionedSelector<edm::Ptr<pat::Electron> >*)p);
   }
   static void deleteArray_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p) {
      delete [] ((::VersionedSelector<edm::Ptr<pat::Electron> >*)p);
   }
   static void destruct_VersionedSelectorlEedmcLcLPtrlEpatcLcLElectrongRsPgR(void *p) {
      typedef ::VersionedSelector<edm::Ptr<pat::Electron> > current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::VersionedSelector<edm::Ptr<pat::Electron> >

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p) {
      return  p ? new(p) ::MakeVersionedSelector<reco::GsfElectron> : new ::MakeVersionedSelector<reco::GsfElectron>;
   }
   static void *newArray_MakeVersionedSelectorlErecocLcLGsfElectrongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakeVersionedSelector<reco::GsfElectron>[nElements] : new ::MakeVersionedSelector<reco::GsfElectron>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p) {
      delete ((::MakeVersionedSelector<reco::GsfElectron>*)p);
   }
   static void deleteArray_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p) {
      delete [] ((::MakeVersionedSelector<reco::GsfElectron>*)p);
   }
   static void destruct_MakeVersionedSelectorlErecocLcLGsfElectrongR(void *p) {
      typedef ::MakeVersionedSelector<reco::GsfElectron> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakeVersionedSelector<reco::GsfElectron>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakeVersionedSelectorlEpatcLcLElectrongR(void *p) {
      return  p ? new(p) ::MakeVersionedSelector<pat::Electron> : new ::MakeVersionedSelector<pat::Electron>;
   }
   static void *newArray_MakeVersionedSelectorlEpatcLcLElectrongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakeVersionedSelector<pat::Electron>[nElements] : new ::MakeVersionedSelector<pat::Electron>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakeVersionedSelectorlEpatcLcLElectrongR(void *p) {
      delete ((::MakeVersionedSelector<pat::Electron>*)p);
   }
   static void deleteArray_MakeVersionedSelectorlEpatcLcLElectrongR(void *p) {
      delete [] ((::MakeVersionedSelector<pat::Electron>*)p);
   }
   static void destruct_MakeVersionedSelectorlEpatcLcLElectrongR(void *p) {
      typedef ::MakeVersionedSelector<pat::Electron> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakeVersionedSelector<pat::Electron>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p) {
      return  p ? new(p) ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron> : new ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>;
   }
   static void *newArray_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>[nElements] : new ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p) {
      delete ((::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>*)p);
   }
   static void deleteArray_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p) {
      delete [] ((::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>*)p);
   }
   static void destruct_MakePtrFromCollectionlEvectorlErecocLcLGsfElectrongRcOrecocLcLGsfElectroncOrecocLcLGsfElectrongR(void *p) {
      typedef ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p) {
      return  p ? new(p) ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron> : new ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>;
   }
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>[nElements] : new ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p) {
      delete ((::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>*)p);
   }
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p) {
      delete [] ((::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>*)p);
   }
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOpatcLcLElectrongR(void *p) {
      typedef ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>

namespace ROOT {
   // Wrappers around operator new
   static void *new_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p) {
      return  p ? new(p) ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron> : new ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>;
   }
   static void *newArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(Long_t nElements, void *p) {
      return p ? new(p) ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>[nElements] : new ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>[nElements];
   }
   // Wrapper around operator delete
   static void delete_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p) {
      delete ((::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>*)p);
   }
   static void deleteArray_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p) {
      delete [] ((::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>*)p);
   }
   static void destruct_MakePtrFromCollectionlEvectorlEpatcLcLElectrongRcOpatcLcLElectroncOrecocLcLGsfElectrongR(void *p) {
      typedef ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>

namespace ROOT {
   // Wrappers around operator new
   static void *new_PrintVIDToStringlErecocLcLGsfElectrongR(void *p) {
      return  p ? new(p) ::PrintVIDToString<reco::GsfElectron> : new ::PrintVIDToString<reco::GsfElectron>;
   }
   static void *newArray_PrintVIDToStringlErecocLcLGsfElectrongR(Long_t nElements, void *p) {
      return p ? new(p) ::PrintVIDToString<reco::GsfElectron>[nElements] : new ::PrintVIDToString<reco::GsfElectron>[nElements];
   }
   // Wrapper around operator delete
   static void delete_PrintVIDToStringlErecocLcLGsfElectrongR(void *p) {
      delete ((::PrintVIDToString<reco::GsfElectron>*)p);
   }
   static void deleteArray_PrintVIDToStringlErecocLcLGsfElectrongR(void *p) {
      delete [] ((::PrintVIDToString<reco::GsfElectron>*)p);
   }
   static void destruct_PrintVIDToStringlErecocLcLGsfElectrongR(void *p) {
      typedef ::PrintVIDToString<reco::GsfElectron> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::PrintVIDToString<reco::GsfElectron>

namespace ROOT {
   // Wrappers around operator new
   static void *new_PrintVIDToStringlEpatcLcLElectrongR(void *p) {
      return  p ? new(p) ::PrintVIDToString<pat::Electron> : new ::PrintVIDToString<pat::Electron>;
   }
   static void *newArray_PrintVIDToStringlEpatcLcLElectrongR(Long_t nElements, void *p) {
      return p ? new(p) ::PrintVIDToString<pat::Electron>[nElements] : new ::PrintVIDToString<pat::Electron>[nElements];
   }
   // Wrapper around operator delete
   static void delete_PrintVIDToStringlEpatcLcLElectrongR(void *p) {
      delete ((::PrintVIDToString<pat::Electron>*)p);
   }
   static void deleteArray_PrintVIDToStringlEpatcLcLElectrongR(void *p) {
      delete [] ((::PrintVIDToString<pat::Electron>*)p);
   }
   static void destruct_PrintVIDToStringlEpatcLcLElectrongR(void *p) {
      typedef ::PrintVIDToString<pat::Electron> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::PrintVIDToString<pat::Electron>

namespace ROOT {
   // Wrapper around operator delete
   static void delete_ElectronMVAEstimatorRun2(void *p) {
      delete ((::ElectronMVAEstimatorRun2*)p);
   }
   static void deleteArray_ElectronMVAEstimatorRun2(void *p) {
      delete [] ((::ElectronMVAEstimatorRun2*)p);
   }
   static void destruct_ElectronMVAEstimatorRun2(void *p) {
      typedef ::ElectronMVAEstimatorRun2 current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::ElectronMVAEstimatorRun2

namespace {
  void TriggerDictionaryInitialization_RecoEgammaElectronIdentification_xr_Impl() {
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
"/cvmfs/cms.cern.ch/slc7_amd64_gcc700/external/sigcpp/2.6.2-pafccj/include/sigc++-2.0",
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
#line 1 "RecoEgammaElectronIdentification_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_Autoloading_Map;
namespace reco{class __attribute__((annotate("$clingAutoload$DataFormats/EgammaCandidates/interface/GsfElectron.h")))  __attribute__((annotate("$clingAutoload$RecoEgamma/ElectronIdentification/interface/VersionedGsfElectronSelector.h")))  GsfElectron;}
namespace edm{template <typename T> class __attribute__((annotate("$clingAutoload$DataFormats/Common/interface/Ptr.h")))  __attribute__((annotate("$clingAutoload$RecoEgamma/ElectronIdentification/interface/VersionedGsfElectronSelector.h")))  Ptr;
}
template <class T> class __attribute__((annotate("$clingAutoload$PhysicsTools/SelectorUtils/interface/VersionedSelector.h")))  __attribute__((annotate("$clingAutoload$RecoEgamma/ElectronIdentification/interface/VersionedGsfElectronSelector.h")))  VersionedSelector;

namespace pat{class __attribute__((annotate("$clingAutoload$DataFormats/PatCandidates/interface/Electron.h")))  __attribute__((annotate("$clingAutoload$RecoEgamma/ElectronIdentification/interface/VersionedGsfElectronSelector.h")))  Electron;}
template <class PhysObj> struct __attribute__((annotate("$clingAutoload$PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h")))  MakeVersionedSelector;

namespace std{template <typename _Tp> class __attribute__((annotate("$clingAutoload$bits/allocator.h")))  __attribute__((annotate("$clingAutoload$string")))  allocator;
}
template <typename T> struct __attribute__((annotate("$clingAutoload$PhysicsTools/SelectorUtils/interface/PrintVIDToString.h")))  PrintVIDToString;

class __attribute__((annotate(R"ATTRDUMP(transient@@@true)ATTRDUMP"))) __attribute__((annotate("$clingAutoload$RecoEgamma/ElectronIdentification/interface/ElectronMVAEstimatorRun2.h")))  ElectronMVAEstimatorRun2;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "RecoEgammaElectronIdentification_xr dictionary payload"

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
#include "RecoEgamma/ElectronIdentification/interface/VersionedGsfElectronSelector.h"
#include "RecoEgamma/ElectronIdentification/interface/VersionedPatElectronSelector.h"

#include "DataFormats/EgammaCandidates/interface/GsfElectronFwd.h"

#include "PhysicsTools/SelectorUtils/interface/MakePyVIDClassBuilder.h"
#include "PhysicsTools/SelectorUtils/interface/MakePtrFromCollection.h"
#include "PhysicsTools/SelectorUtils/interface/PrintVIDToString.h"

#include "RecoEgamma/ElectronIdentification/interface/ElectronMVAEstimatorRun2.h"

namespace RecoEgamma_ElectronIdentification {
  struct dictionary {    
    typedef MakeVersionedSelector<reco::GsfElectron> MakeVersionedGsfElectronSelector;
    typedef MakePtrFromCollection<reco::GsfElectronCollection> MakeGsfPtrFromCollection;
    typedef PrintVIDToString<reco::GsfElectron> PrintGsfElectronVIDToString;

    typedef MakeVersionedSelector<pat::Electron> MakeVersionedPatElectronSelector;
    typedef MakePtrFromCollection<std::vector<pat::Electron> > MakePatPtrFromCollection;
    typedef PrintVIDToString<pat::Electron> PrintPatElectronVIDToString;

    //for using the selectors in python
    VersionedGsfElectronSelector vGsfElectronSelector;    
    MakeVersionedGsfElectronSelector vMakeGsfElectronVersionedSelector;
    PrintGsfElectronVIDToString vGsfPrintVIDToString;
    MakeGsfPtrFromCollection vGsfMakePtrFromCollection;  
    
    VersionedPatElectronSelector vPatElectronSelector; 
    MakeVersionedPatElectronSelector vMakePatElectronVersionedSelector;
    PrintPatElectronVIDToString vPatPrintVIDToString;
    MakePatPtrFromCollection vPatMakePtrFromCollection;
    MakePtrFromCollection<std::vector<pat::Electron>, pat::Electron, reco::GsfElectron > vPatToGsfMakePtrFromCollection;;
    
  };
}



#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[]={
"", payloadCode, "@",
"ElectronMVAEstimatorRun2", payloadCode, "@",
"MakePtrFromCollection<vector<pat::Electron>,pat::Electron,pat::Electron>", payloadCode, "@",
"MakePtrFromCollection<vector<pat::Electron>,pat::Electron,reco::GsfElectron>", payloadCode, "@",
"MakePtrFromCollection<vector<reco::GsfElectron>,reco::GsfElectron,reco::GsfElectron>", payloadCode, "@",
"MakeVersionedSelector<pat::Electron>", payloadCode, "@",
"MakeVersionedSelector<reco::GsfElectron>", payloadCode, "@",
"PrintVIDToString<pat::Electron>", payloadCode, "@",
"PrintVIDToString<reco::GsfElectron>", payloadCode, "@",
"VersionedSelector<edm::Ptr<pat::Electron> >", payloadCode, "@",
"VersionedSelector<edm::Ptr<reco::GsfElectron> >", payloadCode, "@",
nullptr};

    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("RecoEgammaElectronIdentification_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_RecoEgammaElectronIdentification_xr_Impl, {}, classesHeaders, /*has no C++ module*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_RecoEgammaElectronIdentification_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_RecoEgammaElectronIdentification_xr() {
  TriggerDictionaryInitialization_RecoEgammaElectronIdentification_xr_Impl();
}
