#include "HROOTDeletable.h"
#include "TObject.h"
#include "HROOTTObject.h"

using namespace std;

template<class ToType, class FromType>
const ToType* to_const(const FromType* x) {
  return reinterpret_cast<const ToType*>(x);
}

template<class ToType, class FromType>
ToType* to_nonconst(FromType* x) {
  return reinterpret_cast<ToType*>(x);
}



ROOT_DELETABLE_DEFINITIONVIRT(TObject)

ROOT_TOBJECT_DEFINITIONVIRT(TObject)

ROOT_TOBJECT_DEFINITIONNONVIRT(TObject)

void dummyTObject ( void ) 
{
  
}

