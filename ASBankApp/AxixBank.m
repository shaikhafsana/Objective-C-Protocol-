//
//  AxixBank.m
//  ASBankApp
//
//  Created by Student P_02 on 10/11/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import "AxixBank.h"
#import "AxixBank_BankExtension.h"
@implementation AxixBank
/*- (instancetype)init
{
    self = [super init];
    if (self) {
        balance=12.00;
    }
    return self;
}*/
-(void)deposit:(double)amount
{
    
    
    balance=balance+amount;
    self.getbalance=balance;
}
-(void)withdraw:(double)amount
{
    double x=balance-amount;
    printf("x is%lf",x);
   // balance=amount;
    if (x<2000)
    {
        printf("can not withdraw don't have sufficient balance");
    }
    else
    {
        balance=balance-amount;
        self.getbalance=balance;
         NSLog(@"Balance after Withdraw:%lf",self.getbalance);
    }

}
-(void)showbalance
{
    NSLog(@"%f",self.getbalance);

}
-(instancetype)initWithMinBalance:(double)bal
{
    self=[super init];
    if (self) {
        balance=bal;
        
        
        self.getbalance=balance;
    }
    return self;
}

@end
