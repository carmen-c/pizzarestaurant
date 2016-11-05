//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

-(BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

-(void) kitchenDidMakePizza:(PizzaSize)pizzaSize{
    NSLog(@"thank you and have a nice day!!");
}

@end

//Create a second Manager class
//conforms to the KitchenDelegate protocol.
//This manager is more cheery.
//They don't stop any pizzas from being made, they always upgrade orders, and they "say" a nice thing (just implement this as an NSLog statement) when a pizza is made.