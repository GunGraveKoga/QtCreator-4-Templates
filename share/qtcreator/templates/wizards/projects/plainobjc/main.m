#import <ObjFW/Objfw.h>


@interface %{ProjectName}: OFObject<OFApplicationDelegate>
{

}

@end

OF_APPLICATION_DELEGATE(%{ProjectName})

@implementation %{ProjectName}

- (void)applicationDidFinishLaunching
{
	of_log(@"Hello world!");

	[OFApplication terminate];
}

@end
