//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        while (TRUE) {
            // pizza store
            Kitchen *restaurantKitchen = [[Kitchen alloc]init];
            Manager *manager = nil;
            CheeryManager *cheerymanager = nil;
//        Manager
        
        char inputManager[100];
        NSLog(@"Would you like a cheery manager or a manager?");
        fgets(inputManager, 100, stdin);
        
        NSString *chosenManager = [[NSString alloc] initWithUTF8String:inputManager];
        chosenManager = [chosenManager stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
        NSString *cheery = @"cheery";
        NSString *chooseManager = @"manager";
        if ([chosenManager rangeOfString:cheery].location != NSNotFound) {
            cheerymanager = [[CheeryManager alloc]init];
            restaurantKitchen.kitchenDelegate = cheerymanager;
        }
        else if ([chosenManager rangeOfString:chooseManager].location != NSNotFound){
            manager = [[Manager alloc]init];
            restaurantKitchen.kitchenDelegate = manager;
        }
        else {
            NSLog(@"There is no manager so the kitchen staff came to greet you");
        }
            
            
    //  PIZZA!!
        
        NSLog(@"Please pick your pizza size and toppings:");
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
//            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
//            NSLog(@"Command words is %@", commandWords);
            
            NSMutableArray *mutableCommandWords = [commandWords mutableCopy];
            NSString *firstCommand = [mutableCommandWords firstObject];
            [mutableCommandWords removeObjectAtIndex:0];
            
            firstCommand = [firstCommand lowercaseString];
            PizzaSize size = [firstCommand intValue];
            
            if ([firstCommand isEqualToString:@"small"]) {
                size = small;
            }else if ([firstCommand isEqualToString:@"medium"]){
                size = medium;
            }else if ([firstCommand isEqualToString:@"large"]){
                size = large;
            }
            
            // And then send some message to the kitchen...
        
            Pizza *orderIn = [restaurantKitchen makePizzaWithSize:size toppings:mutableCommandWords];
            if (orderIn) {
                NSLog(@"%ld", orderIn.pizzaSize);
                NSLog(@"%@", mutableCommandWords);
            }
            else{
                NSLog(@"you didn't order");
            }
            
//            NSLog(@"%@", );
             }

    }
    return 0;
}

