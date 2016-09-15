//
//  Cook.h
//  strategy_pattern
//
//  Created by Dmitriy Arkhipov on 01.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>


//базовый вариант

//@interface Cook : NSObject
//
//@property (strong, nonatomic) NSString *name;
//
//- (instancetype) initWithName: (NSString*) name;
//
//- (void) makeDinner;
//
//@end



@protocol IMeal <NSObject>

- (void) make;

@end



@interface Cook : NSObject


@property (strong, nonatomic) NSString *name;

@property (weak, nonatomic) id <IMeal> meal;



- (instancetype) initWithName: (NSString*) thisName;


/**
 
 Инициализация инварианта объекта (экземпляра)
 
 @param thisName Имя повара
 
 @param thisMeal Способ приготовления блюда
 
 */


- (instancetype) initWithName: (NSString*) thisName AndMeal: (id <IMeal>) thisMeal;


/**
 
 Метод в котором будет менятся стратегия действий
 
 */

- (void) makeDinner;

@end


@interface PotatoMeal : NSObject <IMeal>

- (void) make;

@end

@interface SaladMeal : NSObject <IMeal>

- (void) make;

@end







