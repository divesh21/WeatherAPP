//
//  ViewController.h
//  WeatherApp
//
//  Created by student14 on 28/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *tempretureLabel;

@property (weak, nonatomic) IBOutlet UILabel *label1;

@property(nonatomic,retain)NSString *url;

@property(nonatomic,retain)NSMutableData *mydata;



@end

