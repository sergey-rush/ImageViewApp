//
//  ViewController.m
//  ImageViewApp
//
//  Created by Admin on 23/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person1 = [[Person alloc]init];
    person1.name = @"Магазин одежды";
    person1.image = [UIImage imageNamed:@"shop.jpg"];
        
    Person *person2 = [[Person alloc]init];
    person2.name = @"Крем для глаз";
    person2.image = [UIImage imageNamed:@"creme.jpg"];
    
    Person *person3 = [[Person alloc]init];
    person3.name = @"Москва-сити";
    person3.image = [UIImage imageNamed:@"skyskaper.jpg"];
    
    Person *person4 = [[Person alloc]init];
    person4.name = @"Персона в сити";
    person4.image = [UIImage imageNamed:@"sergey.jpg"];
    
    self.persons = [[NSMutableArray alloc]init];
    [self.persons addObject:person1];
    [self.persons addObject:person2];
    [self.persons addObject:person3];
    [self.persons addObject:person4];
    
    [self setNext];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setNext {
    int itemCount = (int)[self.persons count];
    int randomIndex = arc4random()%itemCount;
    
    Person *person = [self.persons objectAtIndex:randomIndex];
    self.labelName.text = person.name;
    self.myImageView.image = person.image;
}

- (IBAction)nextButton:(UIBarButtonItem *)sender {
    [self setNext];
}
@end
