#ifdef __cplusplus
extern "C" { 
#endif 

#include "HROOTType.h"



#undef ROOT_DELETABLE_DECLARATIONVIRT
#define ROOT_DELETABLE_DECLARATIONVIRT(Type) \
void Type ## _delete ( Type ## _p p )

#undef ROOT_DELETABLE_DECLARATIONNONVIRT
#define ROOT_DELETABLE_DECLARATIONNONVIRT(Type) \


#undef ROOT_DELETABLE_DEFINITIONVIRT
#define ROOT_DELETABLE_DEFINITIONVIRT(Type)\
void Type ## _delete ( Type ## _p p )\
{\
delete (to_nonconst<Type,Type ## _t>(p)) ; \
}

#undef ROOT_DELETABLE_DEFINITIONNONVIRT
#define ROOT_DELETABLE_DEFINITIONNONVIRT(Type)\




#ifdef __cplusplus
}
#endif
