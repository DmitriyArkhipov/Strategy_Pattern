//
//  ViewController.m
//  strategy_pattern
//
//  Created by Dmitriy Arkhipov on 01.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    Cook* cooker = [[Cook alloc] initWithName:@"blabla"];
//    
//    [cooker makeDinner];
    
    PotatoMeal* potatoMeal = [[PotatoMeal alloc] init];
    
    SaladMeal* saladMeal = [[SaladMeal alloc] init];
    
    
    
    Cook* john = [[Cook alloc] initWithName:@"John" AndMeal:potatoMeal];
    
    [john makeDinner];
    
    NSLog(@"======================================================");
    
    
    Cook* anna = [[Cook alloc] initWithName:@"Anna" AndMeal:saladMeal];
    
    [anna makeDinner];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
