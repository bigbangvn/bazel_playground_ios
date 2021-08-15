

#import <Foundation/Foundation.h>
#import "ObjCTryCatch.h"

@implementation ObjC

+ (BOOL)catchException:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error {
  @try {
    tryBlock();
    return YES;
  }
  @catch (NSException *exception) {
    *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
    return NO;
  }
  @catch (NSError * anError) {
    *error = anError;
    return NO;
  }
}

@end
