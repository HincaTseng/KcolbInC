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

int XManagerInIt(NSString *cardNum) {
    return XManagerInItAsync(cardNum,g_CellBack);
}

int XManagerInItSync(NSString *cardNum) {
     return 1;
}

int XManagerInItAsync(NSString *cardNum,void(^CellBack)(void)) {
    g_CellBack = CellBack;
    
    return 1;
}

NSString *XGetUserIP() {
//    auto str = someCMethod();
//    return [NSString stringWithUTF8String:str];
    return @"这是假的数据";
}

//这是与C++的调用，判断block指针是不是为空
void XInitializeCallBacl()
{
    if (g_CellBack != 0) {
        g_CellBack();
    }
}

@end
