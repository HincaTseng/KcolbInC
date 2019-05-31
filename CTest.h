//
//  CTest.h
//  textAAA
//
//  Created by 曾宪杰 on 2019/4/26.
//  Copyright © 2019 曾宪杰. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTest : NSObject
FOUNDATION_EXPORT int XDunManagerInIt(NSString *cardNum);

FOUNDATION_EXPORT int XDunManagerInItSync(NSString *cardNum);

FOUNDATION_EXPORT int XDunManagerInItAsync(NSString *cardNum,void(^CellBack)(void));

FOUNDATION_EXPORT NSString *XGetUserIP();
@end

NS_ASSUME_NONNULL_END
