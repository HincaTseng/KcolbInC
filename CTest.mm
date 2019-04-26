//
//  CTest.m
//  textAAA
//
//  Created by 曾宪杰 on 2019/4/26.
//  Copyright © 2019 曾宪杰. All rights reserved.
//

#import "CTest.h"
typedef void(^TCellBack)(void);

@implementation CTest

TCellBack g_CellBack = nil;

int XQiSuDunManagerInIt(NSString *cardNum) {
    return XQiSuDunManagerInItAsync(cardNum,g_CellBack);
}

int XQiSuDunManagerInItSync(NSString *cardNum) {
     return 1;
}

int XQiSuDunManagerInItAsync(NSString *cardNum,void(^CellBack)(void)) {
    g_CellBack = CellBack;
    
    return 1;
}

NSString *XQiSuDunGetUserIP() {
//    auto str = someCMethod();
//    return [NSString stringWithUTF8String:str];
    return @"这是假的数据";
}

//这是与C++的调用，判断block指针是不是为空
void XQiSuDunInitializeCallBacl()
{
    if (g_CellBack != 0) {
        g_CellBack();
    }
}

@end
