#ifdef __cplusplus
extern "C" { 
#endif 

#include "HROOTType.h"

#include "HROOTDeletable.h"

#undef ROOT_TOBJECT_DECLARATIONVIRT
#define ROOT_TOBJECT_DECLARATIONVIRT(Type) \
void Type ## _Draw ( Type ## _p p, const char * option ); \
TObject_p Type ## _FindObject ( Type ## _p p, const char * name ); \
const char * Type ## _GetName ( Type ## _p p ); \
TClass_p Type ## _IsA ( Type ## _p p ); \
void Type ## _Paint ( Type ## _p p, const char * option ); \
void Type ## _printObj ( Type ## _p p, const char * option ); \
void Type ## _SaveAs ( Type ## _p p, const char * filename, const char * option ); \
int  Type ## _Write ( Type ## _p p, const char * name, int  option, int  bufsize )

#undef ROOT_TOBJECT_DECLARATIONNONVIRT
#define ROOT_TOBJECT_DECLARATIONNONVIRT(Type) \
Type ## _p Type ## _newTObject (  )

#undef ROOT_TOBJECT_DEFINITIONVIRT
#define ROOT_TOBJECT_DEFINITIONVIRT(Type)\
void Type ## _Draw ( Type ## _p p, const char * option )\
{\
to_nonconst<Type,Type ## _t>(p)->Draw(option);\
}\
TObject_p Type ## _FindObject ( Type ## _p p, const char * name )\
{\
return to_nonconst<TObject_t,TObject>((TObject*)to_nonconst<Type,Type ## _t>(p)->FindObject(name));\
}\
const char * Type ## _GetName ( Type ## _p p )\
{\
return to_nonconst<Type,Type ## _t>(p)->GetName();\
}\
TClass_p Type ## _IsA ( Type ## _p p )\
{\
return to_nonconst<TClass_t,TClass>((TClass*)to_nonconst<Type,Type ## _t>(p)->IsA());\
}\
void Type ## _Paint ( Type ## _p p, const char * option )\
{\
to_nonconst<Type,Type ## _t>(p)->Paint(option);\
}\
void Type ## _printObj ( Type ## _p p, const char * option )\
{\
to_nonconst<Type,Type ## _t>(p)->Print(option);\
}\
void Type ## _SaveAs ( Type ## _p p, const char * filename, const char * option )\
{\
to_nonconst<Type,Type ## _t>(p)->SaveAs(filename, option);\
}\
int  Type ## _Write ( Type ## _p p, const char * name, int  option, int  bufsize )\
{\
return to_nonconst<Type,Type ## _t>(p)->Write(name, option, bufsize);\
}

#undef ROOT_TOBJECT_DEFINITIONNONVIRT
#define ROOT_TOBJECT_DEFINITIONNONVIRT(Type)\
Type ## _p Type ## _newTObject (  )\
{\
Type * newp = new Type (); \
return to_nonconst<Type ## _t, Type >(newp);\
}

ROOT_DELETABLE_DECLARATIONVIRT(TObject);


ROOT_TOBJECT_DECLARATIONVIRT(TObject);


ROOT_TOBJECT_DECLARATIONNONVIRT(TObject);


#ifdef __cplusplus
}
#endif
