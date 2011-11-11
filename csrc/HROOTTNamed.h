#ifdef __cplusplus
extern "C" { 
#endif 

#include "HROOTType.h"

#include "HROOTTObject.h"
#include "HROOTDeletable.h"

#undef ROOT_TNAMED_DECLARATIONVIRT
#define ROOT_TNAMED_DECLARATIONVIRT(Type) \
void Type ## _SetName ( Type ## _p p, const char * name ); \
void Type ## _SetNameTitle ( Type ## _p p, const char * name, const char * title ); \
void Type ## _SetTitle ( Type ## _p p, const char * name )

#undef ROOT_TNAMED_DECLARATIONNONVIRT
#define ROOT_TNAMED_DECLARATIONNONVIRT(Type) \
Type ## _p Type ## _newTNamed ( const char * name, const char * title )

#undef ROOT_TNAMED_DEFINITIONVIRT
#define ROOT_TNAMED_DEFINITIONVIRT(Type)\
void Type ## _SetName ( Type ## _p p, const char * name )\
{\
to_nonconst<Type,Type ## _t>(p)->SetName(name);\
}\
void Type ## _SetNameTitle ( Type ## _p p, const char * name, const char * title )\
{\
to_nonconst<Type,Type ## _t>(p)->SetNameTitle(name, title);\
}\
void Type ## _SetTitle ( Type ## _p p, const char * name )\
{\
to_nonconst<Type,Type ## _t>(p)->SetTitle(name);\
}

#undef ROOT_TNAMED_DEFINITIONNONVIRT
#define ROOT_TNAMED_DEFINITIONNONVIRT(Type)\
Type ## _p Type ## _newTNamed ( const char * name, const char * title )\
{\
Type * newp = new Type (name, title); \
return to_nonconst<Type ## _t, Type >(newp);\
}

ROOT_TOBJECT_DECLARATIONVIRT(TNamed);
ROOT_DELETABLE_DECLARATIONVIRT(TNamed);


ROOT_TNAMED_DECLARATIONVIRT(TNamed);


ROOT_TNAMED_DECLARATIONNONVIRT(TNamed);


#ifdef __cplusplus
}
#endif
