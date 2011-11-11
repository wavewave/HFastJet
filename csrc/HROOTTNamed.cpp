#include "HROOTTObject.h"
#include "HROOTDeletable.h"
#include "TNamed.h"
#include "HROOTTNamed.h"

using namespace std;

template<class ToType, class FromType>
const ToType* to_const(const FromType* x) {
  return reinterpret_cast<const ToType*>(x);
}

template<class ToType, class FromType>
ToType* to_nonconst(FromType* x) {
  return reinterpret_cast<ToType*>(x);
}



ROOT_TOBJECT_DEFINITIONVIRT(TNamed)
ROOT_DELETABLE_DEFINITIONVIRT(TNamed)

ROOT_TNAMED_DEFINITIONVIRT(TNamed)

ROOT_TNAMED_DEFINITIONNONVIRT(TNamed)

void dummyTNamed ( void ) 
{
  
}

