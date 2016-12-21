//
//  WeatherTableViewController.m
//  WeatherApp
//
//  Created by student14 on 13/12/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "WeatherTableViewController.h"
#import "ViewController.h"

@interface WeatherTableViewController ()

@end

@implementation WeatherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _array=[[NSMutableArray alloc]initWithObjects:@"Pune",@"Washim",@"Mangrulpir",@"Akola",@"Mumbai", nil];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    _urlpath=[[NSString alloc]init];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    
    return _array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text=[_array objectAtIndex:indexPath.row];
    
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row==0)
    {
        _urlpath=@"http://api.openweathermap.org/data/2.5/weather?q=pune,IN&appid=386989448b8f8a80e73e45e7541b444f&units=metric";
        
    }
    else if (indexPath.row==1)
    {
        
        _urlpath=@"http://api.openweathermap.org/data/2.5/weather?q=washim,IN&appid=386989448b8f8a80e73e45e7541b444f&units=metric";
        
        
    }
    else if(indexPath.row==2)
    {
        _urlpath=@"http://api.openweathermap.org/data/2.5/weather?q=mangrulpir,IN&appid=386989448b8f8a80e73e45e7541b444f&units=metric";
        
    }
    else if(indexPath.row==3)
    {
        _urlpath=@"http://api.openweathermap.org/data/2.5/weather?q=akola,IN&appid=386989448b8f8a80e73e45e7541b444f&units=metric";
        
    }
    else
    {
        _urlpath=@"http://api.openweathermap.org/data/2.5/weather?q=mumbai,IN&appid=386989448b8f8a80e73e45e7541b444f&units=metric";
        
        
    }
    
    [self performSegueWithIdentifier:@"fvctosvc" sender:self];
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    ViewController *vc=[segue destinationViewController];
    
    vc.url=_urlpath;
    
    
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
