#include "HROOTTDictionary.h"
#include "HROOTTNamed.h"
#include "HROOTTObject.h"
#include "HROOTDeletable.h"
#include "TClass.h"
#include "HROOTTClass.h"

using namespace std;

template<class ToType, class FromType>
const ToType* to_const(const FromType* x) {
  return reinterpret_cast<const ToType*>(x);
}

template<class ToType, class FromType>
ToType* to_nonconst(FromType* x) {
  return reinterpret_cast<ToType*>(x);
}



ROOT_TDICTIONARY_DEFINITIONVIRT(TClass)
ROOT_TNAMED_DEFINITIONVIRT(TClass)
ROOT_TOBJECT_DEFINITIONVIRT(TClass)
ROOT_DELETABLE_DEFINITIONVIRT(TClass)

ROOT_TCLASS_DEFINITIONVIRT(TClass)

ROOT_TCLASS_DEFINITIONNONVIRT(TClass)

void dummyTClass ( void ) 
{
  
}

