//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by carmen cheng on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize){
    small,
    medium,
    large
};


@interface Pizza : NSObject

@property (nonatomic) PizzaSize pizzaSize;
@property (nonatomic) NSArray *toppings;

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings: (NSArray *)toppings;
-(NSString *) showPizzaSize;

@end
