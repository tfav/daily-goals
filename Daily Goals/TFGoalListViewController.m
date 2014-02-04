//
//  TFGoalListViewController.m
//  Daily Goals
//
//  Created by Travis Favaron on 2/3/14.
//  Copyright (c) 2014 Travis Favaron. All rights reserved.
//

#import "TFGoalListViewController.h"
#import "GoalItem.h"
#import "AddGoalItemViewController.h"

@interface TFGoalListViewController ()

@property NSMutableArray *goalItems;


@end

@implementation TFGoalListViewController

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    AddGoalItemViewController *source = [segue sourceViewController];
    GoalItem *item = source.goalItem;
    if (item != nil) {
        [self.goalItems addObject:item];
        [self.goalTable reloadData];
    }
    
}


//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITableViewController *tableViewController = [[UITableViewController alloc] initWithStyle:_goalTable.style];
    tableViewController.tableView = _goalTable;
    [self addChildViewController:tableViewController];
    
    self.goalItems = [[NSMutableArray alloc] init];
    
	// Do any additional setup after loading the view.
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [self initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [self.goalItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    GoalItem *goalItem = [self.goalItems objectAtIndex:indexPath.row];
    cell.textLabel.text = goalItem.itemName;
    
    //    if (goalItem.completed) {
    //        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    //    } else {
    //        cell.accessoryType = UITableViewCellAccessoryNone;
    //    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //    GoalItem *tappedItem = [self.goalItems objectAtIndex:indexPath.row];
    //    tappedItem.completed = !tappedItem.completed;
    //    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a story board-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 
 */

@end

