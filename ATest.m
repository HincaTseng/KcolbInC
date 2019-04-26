//
//  ATest.m
//  textAAA
//
//  Created by 曾宪杰 on 2019/4/26.
//  Copyright © 2019 曾宪杰. All rights reserved.
//

#import "ATest.h"

@implementation ATest

int XManagerInItTest(NSString *cardNum,void(^CellBack)(int success)) {
    
    int mun = 0;
    
    //create thread
    dispatch_queue_t testqueue = dispatch_queue_create("queue", DISPATCH_QUEUE_CONCURRENT);
    
    //do
    for (int i = 0; i<100; i++)
    {
        dispatch_async(testqueue, ^{
            NSLog(@"---%@ 输出%d", [NSThread currentThread], i);
            //method...
            if (i == 99) {
                CFRunLoopStop(CFRunLoopGetMain());
                if (CellBack) {
                    CellBack(i);
                }
                CFRunLoopRun();
            }
        });
    }
    
    NSLog(@"\n并发队列 异步执行\n");
    
    return mun;
}

@end
