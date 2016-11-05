//
//  Manager.m
//  PizzaRestaurant
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "Pizza.h"

@implementation Manager

-(BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if([toppings containsObject:@"anchovies"]){
        NSLog(@"The manager freaks out and kicks you out of the pizza store");
        return NO;
    }else{
        return YES;
    }
}

-(BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}


@end

//managers that hate anchovies so much, they refuse to make pizzas that have anchovies.
//implementation of shouldMakePizza should return NO if any of the toppings are anchovies.
//This manager does not upgrade orders, and doesn't do anything after the kitchen makes a pizza.
//
//
