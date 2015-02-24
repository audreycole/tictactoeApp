//
//  ViewController.h
//  tictactoe
//
//  Created by Audrey Cole on 2/20/15.
//  Copyright (c) 2015 Audrey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property int player;
@property BOOL isTwoPlayer;
@property NSInteger moveFirst;
@property BOOL newGame;
@property (weak, nonatomic) IBOutlet UIButton *box1;
@property (weak, nonatomic) IBOutlet UIButton *box2;
@property (weak, nonatomic) IBOutlet UIButton *box3;
@property (weak, nonatomic) IBOutlet UIButton *box4;
@property (weak, nonatomic) IBOutlet UIButton *box5;
@property (weak, nonatomic) IBOutlet UIButton *box6;
@property (weak, nonatomic) IBOutlet UIButton *box7;
@property (weak, nonatomic) IBOutlet UIButton *box8;
@property (weak, nonatomic) IBOutlet UIButton *box9;
@property (strong, nonatomic) IBOutlet UIButton *twoPlayer;
@property (strong, nonatomic) IBOutlet UIButton *onePlayer;
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UISegmentedControl *firstMove;

@end

