#import "iOSBadgeSet.h"

@implementation iOSBadgeSet

@synthesize callbackId;

- (void)iOSBadgeSet:(CDVInvokedUrlCommand *)command {
    self.callbackId = command.callbackId;

    NSString* count = [command.arguments objectAtIndex:0];

    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.applicationIconBadgeNumber = [count intValue];
    [localNotification release];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@""];
    NSString* javaScript = [pluginResult toSuccessCallbackString:self.callbackId];
    [self writeJavascript:javaScript];
}

@end
