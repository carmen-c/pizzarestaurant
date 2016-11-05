//
//  Manager.h
//  PizzaRestaurant
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

@interface Manager : NSObject <KitchenDelegate>

@end

//managers that hate anchovies so much, they refuse to make pizzas that have anchovies.
//implementation of shouldMakePizza should return NO if any of the toppings are anchovies.
//This manager does not upgrade orders, and doesn't do anything after the kitchen makes a pizza.
//
//