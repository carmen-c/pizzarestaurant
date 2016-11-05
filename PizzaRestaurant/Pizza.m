//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by carmen cheng on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings: (NSArray *)toppings{
    self = [super init];
    if (self) {
        _pizzaSize = size;
        _toppings = toppings;
    }
    return self;
}

-(NSString *) showPizzaSize{
    return [NSString stringWithFormat:@"You ordered a %ld with %@", self.pizzaSize, self.toppings];
}


@end
