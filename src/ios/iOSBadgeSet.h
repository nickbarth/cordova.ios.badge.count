#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>
#import <Parse/Parse.h>

@interface iOSBadgeSet: CDVPlugin{
  NSString* callbackId;
}

@property (nonatomic, retain) NSString* callbackId;
- (void)iOSBadgeSet:(CDVInvokedUrlCommand *)command;
@end
