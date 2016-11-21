//
//  BankDelegate.h
//  ASBankApp
//
//  Created by Student P_02 on 10/11/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BankDelegate <NSObject>
-(void)deposit :(double) amount;
-(void)withdraw: (double) amount;
//-(void)showbalance;
@end
