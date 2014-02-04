//
//  TFGoalListViewController.h
//  Daily Goals
//
//  Created by Travis Favaron on 2/3/14.
//  Copyright (c) 2014 Travis Favaron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TFGoalListViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIView *listViewContainer;
@property (nonatomic, retain) IBOutlet UITableView *goalTable;

@end
