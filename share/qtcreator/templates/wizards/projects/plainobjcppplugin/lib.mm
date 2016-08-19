#import <ObjFW/ObjFW.h>
#import "%{ProjectName}.h"

#ifndef OF_OBJFW_RUNTIME
extern void objc_unregister_class(Class);
#endif

static void __attribute__((destructor))
unload(void)
{
	objc_unregister_class(objc_getClass("%{ProjectName}"));
}

@implementation %{ProjectName}



@end


id init_plugin(void) {

	return [[[%{ProjectName} alloc] init] autorelease];
	
}