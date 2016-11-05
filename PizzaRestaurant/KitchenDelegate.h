//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Pizza.h"
@class Kitchen;

#import "Pizza.h"

@protocol KitchenDelegate <NSObject>
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;
@end
