#include "HROOTTNamed.h"
#include "HROOTTObject.h"
#include "HROOTDeletable.h"
#include "TDictionary.h"
#include "HROOTTDictionary.h"

using namespace std;

template<class ToType, class FromType>
const ToType* to_const(const FromType* x) {
  return reinterpret_cast<const ToType*>(x);
}

template<class ToType, class FromType>
ToType* to_nonconst(FromType* x) {
  return reinterpret_cast<ToType*>(x);
}



ROOT_TNAMED_DEFINITIONVIRT(TDictionary)
ROOT_TOBJECT_DEFINITIONVIRT(TDictionary)
ROOT_DELETABLE_DEFINITIONVIRT(TDictionary)



void dummyTDictionary ( void ) 
{
  
}

