//
//  main.m
//  Quiz3
//
//  Created by Jon Diehl on 1/31/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{        
    @autoreleasepool
    {
            NSLog(@"Jon");
            
            NSString *firstName = @"Jon";
            
            NSLog(@"%@",firstName);
            
            NSNumber *num = @200;
            
            NSLog(@"%@",num);
            
            NSArray *fruits = [NSArray arrayWithObjects:@"Apple", @"Lemon", @"Pear", nil];
            
            for (NSString *str in fruits) {
                NSLog(@"%@",str);
            }
            
            NSDictionary *sweetness = [NSDictionary dictionaryWithObjects:
                                       [NSArray arrayWithObjects:@6, @1, @5, nil] forKeys:fruits];
            
            NSLog(@"Sweetness of an apple is %@",sweetness[@"Apple"]);
            
            NSUInteger myUInteger = 123;
            
            NSLog(@"%d",myUInteger);
            
            NSNumber *two = @2;
            
            NSNumber *three = @3;
            
            NSNumber *product = [NSNumber numberWithInt:[two integerValue] * [three integerValue]];
            
            NSLog(@"%@",product);
            
            NSString *lastName = @"Diehl";
            
            NSString *fullName = [[firstName stringByAppendingString:@" "]
                                  stringByAppendingString:lastName];
            
            NSLog(@"%@",fullName);
            
            for (NSString *str in sweetness) {
                if ([sweetness[str] integerValue] < 4) {
                    NSLog(@"Not Sweet");
                } else if ([sweetness[str] integerValue] < 8) {
                    NSLog(@"Somewhat sweet");
                } else {
                    NSLog(@"Sweet");
                }
            }
            typedef enum {
                MON,TUE,WED,THU,FRI,SAT,SUN
            } DayOfTheWeek;
            
            DayOfTheWeek currentDay = MON;
            
            void (^myFirstBlock)(void) = ^(void){ NSLog(@"Hello World"); };
            
            myFirstBlock();
            
            void (^mySecondBlock)(NSString *) = ^(NSString *str){
                NSLog(@"%@",str);
            };
            
            mySecondBlock(@"Hello");
            
            mySecondBlock(@"World");
    }
}
