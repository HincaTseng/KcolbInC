//
//  BTest.m
//  textAAA
//
//  Created by 曾宪杰 on 2019/4/26.
//  Copyright © 2019 曾宪杰. All rights reserved.
//

#import "BTest.h"
typedef void(^TCellBack)(void);

@implementation BTest

TCellBack Celled = nil;

int XManagerInIt(NSString *cardNum) {
    
    return XQiSuDunManagerInItAsync(@"init", Celled);
    return 1;
}

int XManagerInItSync(NSString *cardNum) {
    return 1;
}

int XManagerInItAsync(NSString *cardNum,void(^CellBack)(void)) {
   //不能为空
    if (CellBack) {
        //设置调用，在VC中回调。
        CellBack();
        //私有TCellBack赋值
        Celled = CellBack;
    }
    return 1;
}
@end
