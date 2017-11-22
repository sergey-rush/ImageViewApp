//
//  ViewController.h
//  ImageViewApp
//
//  Created by Admin on 23/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@property (strong, nonatomic)IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *labelName;
@property (strong, nonatomic) NSMutableArray *persons;

- (IBAction)nextButton:(UIBarButtonItem *)sender;

@end

