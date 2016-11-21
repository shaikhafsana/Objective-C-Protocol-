//
//  AxixBank.h
//  ASBankApp
//
//  Created by Student P_02 on 10/11/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankDelegate.h"
@interface AxixBank : NSObject<BankDelegate>
{
    double balance;
}
@property(readonly) double getbalance;
-(instancetype)initWithMinBalance:(double) bal;
@end
