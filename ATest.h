//
//  ATest.h
//  textAAA
//
//  Created by 曾宪杰 on 2019/4/26.
//  Copyright © 2019 曾宪杰. All rights reserved.
//
/*
 
 //   int ob = XQiSuDunManagerInItTest(@"a", ^(int success) {
 //        NSLog(@"success  %d\n %@\n",success,[NSThread currentThread]);
 //    });
 //    NSLog(@"ob is %d\n",ob);
 
 int obj = XQiSuDunManagerInItAsync(@"b", ^{
 NSLog(@"cell back");
 });
 NSLog(@"obj is %d\n",obj);
 
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ATest : NSObject

FOUNDATION_EXPORT int XManagerInItTest(NSString *cardNum,void(^CellBack)(int success));

FOUNDATION_EXPORT int XManagerInIt(NSString *cardNum);

@end

NS_ASSUME_NONNULL_END
