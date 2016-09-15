//
//  Cook.m
//  strategy_pattern
//
//  Created by Dmitriy Arkhipov on 01.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//


#import "Cook.h"

@implementation Cook

@synthesize name;


- (instancetype) initWithName:(NSString*) thisName {
    
    self = [super init];
    if(self)
    {
        self.name = thisName;
    }
    return self;

}


- (instancetype) initWithName:(NSString*) thisName AndMeal:(id<IMeal>) thisMeal {
    
    self = [super init];
    if(self)
    {
        self.name = thisName;
        self.meal = thisMeal;
    }
    return self;
    
}


- (void) makeDinner {
    
    [self.meal make];
    
    //old base code

//    NSLog(@"Чистим картошку");
//    NSLog(@"Ставим почищенную картошку на огонь");
//    NSLog(@"Сливаем остатки воды, разминаем варенный картофель в пюре");
//    NSLog(@"Посыпаем пюре специями и зеленью");
//    NSLog(@"Картофельное пюре готово");
    
}

@end


@implementation PotatoMeal

- (void) make {
    
    NSLog(@"Чистим картошку");
    NSLog(@"Ставим почищенную картошку на огонь");
    NSLog(@"Сливаем остатки воды, разминаем варенный картофель в пюре");
    NSLog(@"Посыпаем пюре специями и зеленью");
    NSLog(@"Картофельное пюре готово");
}

@end


@implementation SaladMeal

- (void) make {
    
    NSLog(@"Нарезаем помидоры и огурцы");
    NSLog(@"Посыпаем зеленью, солью и специями");
    NSLog(@"Поливаем подсолнечным маслом");
    NSLog(@"Посыпаем пюре специями и зеленью");
    NSLog(@"Салат готов");
}

@end






