#import "iOSBadgeSet.h"

@implementation iOSBadgeSet

@synthesize callbackId;

- (void)iOSBadgeSet:(CDVInvokedUrlCommand *)command {
    self.callbackId = command.callbackId;

    NSString* count = [command.arguments objectAtIndex:0];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:[count intValue]];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@""];
    NSString* javaScript = [pluginResult toSuccessCallbackString:self.callbackId];
    [self writeJavascript:javaScript];
}

@end
