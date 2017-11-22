//
//  Person.h
//  ImageViewApp
//
//  Created by Admin on 23/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Person : NSObject
{
NSString *name;
UIImage *image;
}

@property(nonatomic, readwrite) NSString *name;
@property(nonatomic, readwrite) UIImage *image;

@end
