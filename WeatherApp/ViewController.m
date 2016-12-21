//
//  ViewController.m
//  WeatherApp
//
//  Created by student14 on 28/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "ViewController.h"
#import "WeatherTableViewController.h"
#import "Weather.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mydata=[[NSMutableData alloc]init];
    
    NSURL *url=[NSURL URLWithString:_url];
    
    NSMutableURLRequest  *req=[NSMutableURLRequest requestWithURL:url];
    req.HTTPMethod=@"GET";
    
    [NSURLConnection connectionWithRequest:req delegate:self];
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [_mydata setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
{
    [_mydata appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSDictionary *dic=[NSJSONSerialization JSONObjectWithData:_mydata options:NSJSONReadingAllowFragments error:nil];
    
    NSDictionary *dictionary=[dic objectForKey:@"main"];
    
    Weather *w=[[Weather alloc]init];
    
    w.tempreture=[[dictionary objectForKey:@"temp"]description];
    
    NSLog(@"%@",w.tempreture);
    
    
    _label1.text=w.tempreture;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
