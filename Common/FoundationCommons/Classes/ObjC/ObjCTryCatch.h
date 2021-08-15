
#ifndef ObjCTryCatch_h
#define ObjCTryCatch_h

#import <Foundation/Foundation.h>

@interface ObjC : NSObject

+ (BOOL)catchException:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error;

@end

#endif /* ObjCTryCatch_h */

