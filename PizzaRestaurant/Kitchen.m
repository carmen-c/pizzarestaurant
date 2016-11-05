//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    
    Pizza *newPizza = nil;
    
    if (self.kitchenDelegate) {
        
        if ([self.kitchenDelegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
            BOOL upgradeToLarge = [self.kitchenDelegate kitchenShouldUpgradeOrder:self];
            if (upgradeToLarge) {
                newPizza = [[Pizza alloc]initWithPizzaSize:large andToppings:toppings];
            }
            else{
                newPizza = [[Pizza alloc]initWithPizzaSize:size andToppings:toppings];
            }
            
        
        if ([self.kitchenDelegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [self.kitchenDelegate kitchenDidMakePizza:newPizza];
        }
            return newPizza;
            
        } else{
        return newPizza;
        }
        
        
    }
    
    return [[Pizza alloc]initWithPizzaSize:size andToppings:toppings];
}

@end
 