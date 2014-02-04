//
//  AddGoalItemViewController.m
//  Daily Goals
//
//  Created by Travis Favaron on 2/1/14.
//  Copyright (c) 2014 Travis Favaron. All rights reserved.
//

#import "AddGoalItemViewController.h"

@interface AddGoalItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@end

@implementation AddGoalItemViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.saveButton) return;
    if (self.textField.text.length > 0) {
        self.goalItem = [[GoalItem alloc]init];
        self.goalItem.itemName = self.textField.text;
    }

}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
