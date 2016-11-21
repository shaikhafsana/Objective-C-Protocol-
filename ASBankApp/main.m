//
//  main.m
//  ASBankApp
//
//  Created by Student P_02 on 10/11/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AxixBank.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       AxixBank *ab=[[AxixBank alloc]initWithMinBalance:2000];
       /* [ab deposit:500];
       // [ab showbalance];
        NSLog(@"Balance after Deposit:%lf",ab.getbalance);
        [ab withdraw:3000];
       
      //  [ab showbalance];
       */
        int choice,ans;
        double dAmount;
        do {
        printf("\n1.Deposit\n2.Withdraw");
        printf("\nPlease enter your choice:");
        scanf("%d",&choice);
        //printf("your choice is %d",choice);
        switch (choice) {
            case 1:
                printf("\nEnter your deposit amount:");
                scanf("%lf",&dAmount);
                [ab deposit:dAmount];
                NSLog(@"Balance After deposit is->%lf",ab.getbalance);
                break;

            case 2:
                printf("\nEnter your amount to withdraw:");
                scanf("%lf",&dAmount);
                [ab withdraw:dAmount];
                break;

            default:printf("wrong choice");
                break;
        }
            printf("\nDo you want to cintinue???\n1.Yes\n2.No\n");
            scanf("%d",&ans);
            if (ans==2) {
                printf("Thanks for using application........");
            }
        }while (ans==1);
        

    }
    return 0;
}
