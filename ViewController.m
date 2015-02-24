//
//  ViewController.m
//  tictactoe
//
//  Created by Audrey Cole on 2/20/15.
//  Copyright (c) 2015 Audrey Cole. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize player;
@synthesize isTwoPlayer;
@synthesize moveFirst;
@synthesize newGame;
@synthesize box1, box2, box3, box4, box5, box6, box7, box8, box9;
@synthesize status;
@synthesize twoPlayer;
@synthesize onePlayer;
@synthesize firstMove;

- (IBAction)playerTurn:(id)sender {
    //use a number to represent player 1 or 2
    UIButton *pressedPart = (UIButton *) sender;
    //if it's two player, react as you would
    if(isTwoPlayer) {
        switch (player) { //based on whose turn it is...
            case 1: [pressedPart setTitle: @"X" forState: UIControlStateNormal];
                player = 2;
                status.text = @"Player 2's turn.";
                break; //if they clicked an X, it's the end of their turn and it's now Player 2's turn
            case 2: [pressedPart setTitle: @"O" forState: UIControlStateNormal];
                player = 1;
                status.text = @"Player 1's turn.";
                break; //if they clicked an O, it's the end of their turn and it's now Player 1's turn
            default:exit(0);
                break;
        }
    }
    //play against computer
    else {
        [pressedPart setTitle: @"X" forState: UIControlStateNormal];
        //1. If the computer has 2 in a row, make the winning move
        if([[[box1 titleLabel]text]  isEqual: @"O"] && [[[box2 titleLabel]text]  isEqual: @"O"] && ([[[box3 titleLabel]text]  isEqual: @" "] || box3.titleLabel.text == nil)){
            [box3 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box2 titleLabel]text]  isEqual: @"O"] && [[[box3 titleLabel]text]  isEqual: @"O"] && ([[box1 titleForState:UIControlStateNormal]  isEqual: @" "] || [box1 titleForState:UIControlStateNormal] == nil)) {
            [box1 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if([[[box1 titleLabel]text]  isEqual: @"O"] && [[[box3 titleLabel]text]  isEqual: @"O"] && ([[box2 titleForState:UIControlStateNormal]  isEqual: @" "] || [box2 titleForState:UIControlStateNormal] == nil)) {
            [box2 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box4 titleLabel]text]  isEqual: @"O"] && [[[box5 titleLabel]text]  isEqual: @"O"] && ([[box6 titleForState:UIControlStateNormal]  isEqual: @" "] || [box6 titleForState:UIControlStateNormal] == nil)) {
            [box6 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"O"] && [[[box6 titleLabel]text]  isEqual: @"O"] && ([[box4 titleForState:UIControlStateNormal]  isEqual: @" "] || [box4 titleForState:UIControlStateNormal] == nil)) {
            [box4 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box4 titleLabel]text]  isEqual: @"O"] && [[[box6 titleLabel]text]  isEqual: @"O"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)){
            [box5 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box7 titleLabel]text]  isEqual: @"O"] && [[[box8 titleLabel]text]  isEqual: @"O"] && ([[box9 titleForState:UIControlStateNormal]  isEqual: @" "] || [box9 titleForState:UIControlStateNormal] == nil)) {
            [box9 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box8 titleLabel]text]  isEqual: @"O"] && [[[box9 titleLabel]text]  isEqual: @"O"] && ([[box7 titleForState:UIControlStateNormal]  isEqual: @" "] || [box7 titleForState:UIControlStateNormal] == nil)) {
            [box7 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box7 titleLabel]text]  isEqual: @"O"] && [[[box9 titleLabel]text]  isEqual: @"O"] && ([[box8 titleForState:UIControlStateNormal] isEqual: @" "] || [box8 titleForState:UIControlStateNormal] == nil)) {
            [box8 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box1 titleLabel]text]  isEqual: @"O"] && [[[box4 titleLabel]text]  isEqual: @"O"] && ([[box7 titleForState:UIControlStateNormal]  isEqual: @" "] || [box7 titleForState:UIControlStateNormal] == nil)) {
            [box7 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box1 titleLabel]text]  isEqual: @"O"] && [[[box7 titleLabel]text]  isEqual: @"O"] && ([[box4 titleForState:UIControlStateNormal]  isEqual: @" "] || [box4 titleForState:UIControlStateNormal] == nil)) {
            [box4 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box4 titleLabel]text]  isEqual: @"O"] && [[[box7 titleLabel]text]  isEqual: @"O"] && ([[box1 titleForState:UIControlStateNormal]  isEqual: @" "] || [box1 titleForState:UIControlStateNormal] == nil)) {
            [box1 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box2 titleLabel]text]  isEqual: @"O"] && [[[box5 titleLabel]text]  isEqual: @"O"] && ([[box8 titleForState:UIControlStateNormal]  isEqual: @" "] || [box8 titleForState:UIControlStateNormal] == nil)) {
            [box8 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box2 titleLabel]text]  isEqual: @"O"] && [[[box8 titleLabel]text]  isEqual: @"O"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)) {
            [box5 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"O"] && [[[box8 titleLabel]text]  isEqual: @"O"] && ([[box2 titleForState:UIControlStateNormal]  isEqual: @" "] || [box2 titleForState:UIControlStateNormal] == nil)) {
            [box2 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box3 titleLabel]text]  isEqual: @"O"] && [[[box6 titleLabel]text]  isEqual: @"O"] && ([[box9 titleForState:UIControlStateNormal]  isEqual: @" "] || [box9 titleForState:UIControlStateNormal] == nil)) {
            [box9 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box6 titleLabel]text]  isEqual: @"O"] && [[[box9 titleLabel]text]  isEqual: @"O"] && ([[box3 titleForState:UIControlStateNormal]  isEqual: @" "] || [box3 titleForState:UIControlStateNormal] == nil)) {
            [box3 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box3 titleLabel]text]  isEqual: @"O"] && [[[box9 titleLabel]text]  isEqual: @"O"] && ([[box6 titleForState:UIControlStateNormal]  isEqual: @" "] || [box6 titleForState:UIControlStateNormal] == nil)) {
            [box6 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if([[[box1 titleLabel]text]  isEqual: @"O"] && [[[box5 titleLabel]text]  isEqual: @"O"] && ([[box9 titleForState:UIControlStateNormal]  isEqual: @" "] || [box9 titleForState:UIControlStateNormal] == nil)) {
            [box9 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"O"] && [[[box9 titleLabel]text]  isEqual: @"O"] && ([[box1 titleForState:UIControlStateNormal]  isEqual: @" "] || [box1 titleForState:UIControlStateNormal] == nil)) {
            [box1 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box1 titleLabel]text]  isEqual: @"O"] && [[[box9 titleLabel]text]  isEqual: @"O"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)) {
            [box5 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"O"] && [[[box7 titleLabel]text]  isEqual: @"O"] && ([[box3 titleForState:UIControlStateNormal]  isEqual: @" "] || [box3 titleForState:UIControlStateNormal] == nil)) {
            [box3 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box7 titleLabel]text]  isEqual: @"O"] && [[[box3 titleLabel]text]  isEqual: @"O"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)) {
            [box5 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"O"] && [[[box3 titleLabel]text]  isEqual: @"O"] && ([[box7 titleForState:UIControlStateNormal]  isEqual: @" "] || [box7 titleForState:UIControlStateNormal] == nil)) {
            [box7 setTitle: @"O" forState: UIControlStateNormal];
        }
        //2. if the player has the winning move, block them
        else if ([[[box1 titleLabel]text]  isEqual: @"X"] && [[[box2 titleLabel]text]  isEqual: @"X"] && ([[box3 titleForState:UIControlStateNormal]  isEqual: @" "] || [box3 titleForState:UIControlStateNormal] == nil)){
            [box3 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box2 titleLabel]text]  isEqual: @"X"] && [[[box3 titleLabel]text]  isEqual: @"X"] && ([[box1 titleForState:UIControlStateNormal]  isEqual: @" "] || [box1 titleForState:UIControlStateNormal] == nil)) {
            [box1 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if([[[box1 titleLabel]text]  isEqual: @"X"] && [[[box3 titleLabel]text]  isEqual: @"X"] && ([[box2 titleForState:UIControlStateNormal]  isEqual: @" "] || [box2 titleForState:UIControlStateNormal] == nil)) {
            [box2 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box4 titleLabel]text]  isEqual: @"X"] && [[[box5 titleLabel]text]  isEqual: @"X"] && ([[box6 titleForState:UIControlStateNormal]  isEqual: @" "] || [box6 titleForState:UIControlStateNormal] == nil)) {
            [box6 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"X"] && [[[box6 titleLabel]text]  isEqual: @"X"] && ([[box4 titleForState:UIControlStateNormal]  isEqual: @" "] || [box4 titleForState:UIControlStateNormal] == nil)) {
            [box4 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box4 titleLabel]text]  isEqual: @"X"] && [[[box6 titleLabel]text]  isEqual: @"X"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)){
            [box5 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box7 titleLabel]text]  isEqual: @"X"] && [[[box8 titleLabel]text]  isEqual: @"X"] && ([[box9 titleForState:UIControlStateNormal]  isEqual: @" "] || [box9 titleForState:UIControlStateNormal] == nil)) {
            [box9 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box8 titleLabel]text]  isEqual: @"X"] && [[[box9 titleLabel]text]  isEqual: @"X"] && ([[box7 titleForState:UIControlStateNormal]  isEqual: @" "] || [box7 titleForState:UIControlStateNormal] == nil)) {
            [box7 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box7 titleLabel]text]  isEqual: @"X"] && [[[box9 titleLabel]text]  isEqual: @"X"] && ([[box8 titleForState:UIControlStateNormal]  isEqual: @" "] || [box8 titleForState:UIControlStateNormal] == nil)) {
            [box8 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box1 titleLabel]text]  isEqual: @"X"] && [[[box4 titleLabel]text]  isEqual: @"X"] && ([[box7 titleForState:UIControlStateNormal]  isEqual: @" "] || [box7 titleForState:UIControlStateNormal] == nil)) {
            [box7 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box1 titleLabel]text]  isEqual: @"X"] && [[[box7 titleLabel]text]  isEqual: @"X"] && ([[box4 titleForState:UIControlStateNormal]  isEqual: @" "] || [box4 titleForState:UIControlStateNormal] == nil)) {
            [box4 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box4 titleLabel]text]  isEqual: @"X"] && [[[box7 titleLabel]text]  isEqual: @"X"] && ([[box1 titleForState:UIControlStateNormal]  isEqual: @" "] || [box1 titleForState:UIControlStateNormal] == nil)) {
            [box1 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box2 titleLabel]text]  isEqual: @"X"] && [[[box5 titleLabel]text]  isEqual: @"X"] && ([[box8 titleForState:UIControlStateNormal]  isEqual: @" "] || [box8 titleForState:UIControlStateNormal] == nil)) {
            [box8 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box2 titleLabel]text]  isEqual: @"X"] && [[[box8 titleLabel]text]  isEqual: @"X"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)) {
            [box5 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"X"] && [[[box8 titleLabel]text]  isEqual: @"X"] && ([[box2 titleForState:UIControlStateNormal]  isEqual: @" "] || [box2 titleForState:UIControlStateNormal] == nil)) {
            [box2 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box3 titleLabel]text]  isEqual: @"X"] && [[[box6 titleLabel]text]  isEqual: @"X"] && ([[box9 titleForState:UIControlStateNormal]  isEqual: @" "] || [box9 titleForState:UIControlStateNormal] == nil)) {
            [box9 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box6 titleLabel]text]  isEqual: @"X"] && [[[box9 titleLabel]text]  isEqual: @"X"] && ([[box3 titleForState:UIControlStateNormal]  isEqual: @" "] || [box3 titleForState:UIControlStateNormal] == nil)) {
            [box3 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box3 titleLabel]text]  isEqual: @"X"] && [[[box9 titleLabel]text]  isEqual: @"X"] && ([[box6 titleForState:UIControlStateNormal]  isEqual: @" "] || [box6 titleForState:UIControlStateNormal] == nil)) {
            [box6 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if([[[box1 titleLabel]text]  isEqual: @"X"] && [[[box5 titleLabel]text]  isEqual: @"X"] && ([[box9 titleForState:UIControlStateNormal]  isEqual: @" "] || [box9 titleForState:UIControlStateNormal] == nil)) {
            [box9 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"X"] && [[[box9 titleLabel]text]  isEqual: @"X"] && ([[box1 titleForState:UIControlStateNormal]  isEqual: @" "] || [box1 titleForState:UIControlStateNormal] == nil)) {
            [box1 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box1 titleLabel]text]  isEqual: @"X"] && [[[box9 titleLabel]text]  isEqual: @"X"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)) {
            [box5 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"X"] && [[[box7 titleLabel]text]  isEqual: @"X"] && ([[box3 titleForState:UIControlStateNormal]  isEqual: @" "] || [box3 titleForState:UIControlStateNormal] == nil)) {
            [box3 setTitle: @"O" forState:UIControlStateNormal];
        }
        else if ([[[box7 titleLabel]text]  isEqual: @"X"] && [[[box3 titleLabel]text]  isEqual: @"X"] && ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil)) {
            [box5 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[[box5 titleLabel]text]  isEqual: @"X"] && [[[box3 titleLabel]text]  isEqual: @"X"] && ([[box7 titleForState:UIControlStateNormal]  isEqual: @" "] || [box7 titleForState:UIControlStateNormal] == nil)) {
            [box7 setTitle: @"O" forState: UIControlStateNormal];
        }
        //3. If neither the computer or player can win in the next step, the computer should try to play 2 in a row if possible and block the player when needed
        else if ([[box1 titleForState:UIControlStateNormal]  isEqual: @" "] || [box1 titleForState:UIControlStateNormal] == nil) {
            [box1 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box2 titleForState:UIControlStateNormal] isEqual: @" "] || [box2 titleForState:UIControlStateNormal] == nil) {
            [box2 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box3 titleForState:UIControlStateNormal]  isEqual: @" "] || [box3 titleForState:UIControlStateNormal] == nil) {
            [box3 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box4 titleForState:UIControlStateNormal]  isEqual: @" "] || [box4 titleForState:UIControlStateNormal] == nil) {
            [box4 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box6 titleForState:UIControlStateNormal]  isEqual: @" "] || [box6 titleForState:UIControlStateNormal] == nil) {
            [box6 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box7 titleForState:UIControlStateNormal]  isEqual: @" "] || [box7 titleForState:UIControlStateNormal] == nil) {
            [box7 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box8 titleForState:UIControlStateNormal]  isEqual: @" "] || [box8 titleForState:UIControlStateNormal] == nil) {
            [box8 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box9 titleForState:UIControlStateNormal]  isEqual: @" "] || [box9 titleForState:UIControlStateNormal] == nil) {
            [box9 setTitle: @"O" forState: UIControlStateNormal];
        }
        else if ([[box5 titleForState:UIControlStateNormal]  isEqual: @" "] || [box5 titleForState:UIControlStateNormal] == nil) {
            [box5 setTitle: @"O" forState: UIControlStateNormal];
        }
        
        status.text = @"Your turn now!";
    }
    
    [self performSelector:@selector(checkForWin) withObject:nil afterDelay:0.5f]; //check to see if someone won right after they made a move
}

- (IBAction)gameType:(id)sender {
    isTwoPlayer = YES;
    twoPlayer.enabled = NO;
    onePlayer.enabled = NO;
    firstMove.hidden = NO;
    status.text = @"Choose who plays first";
}

-(IBAction)gameType2:(id)sender {
    isTwoPlayer = NO;
    twoPlayer.enabled = NO;
    onePlayer.enabled = NO;
    firstMove.hidden = NO;
    status.text = @"Choose who plays first";
}

-(IBAction)moveFirst:(id)sender {
    moveFirst = firstMove.selectedSegmentIndex;
    //NSLog(@"%ld",(long)moveFirst);
    newGame = YES;
    if(moveFirst == 0) {
        status.text = @"Player 1's turn";
        player = 1;
    }
    else if(moveFirst == 1) {
        if(isTwoPlayer){
            status.text = @"Player 2's turn";
        }
        else {
            //Computer makes first move...
            [box5 setTitle: @"O" forState:UIControlStateNormal];
            player = 1;
            status.text = @"Your turn next...prepare to lose!";
        }
    
        player = 2;
    }
    else {
        //randomly choose 1 or 2
        int number = arc4random() % 2;
        if(number==0){
            //pick one number
            status.text = @"Player 1's turn";
            player = 1;
        }else{
            //pick other number
            if(isTwoPlayer) {
                status.text = @"Player 2's turn";
                player = 2;
            }
            else {
                //Computer makes first move...
                [box5 setTitle: @"O" forState:UIControlStateNormal];
                player = 1;
                status.text = @"Your turn next...prepare to lose!";
            }
            
        }
    }
}

- (void)checkForWin {
    // All possible wins for X <-- Is there a better way to do this?
    if ((([[box1 titleLabel]text] == [[box2 titleLabel]text]) && ([[box1 titleLabel]text] == [[box3 titleLabel]text]) && ([[[box1 titleLabel]text]  isEqual: @"X"])) ||
        
        (([[box4 titleLabel]text] == [[box5 titleLabel]text]) && ([[box4 titleLabel]text] == [[box6 titleLabel]text]) && ([[[box4 titleLabel]text]  isEqual: @"X"])) ||
        
        (([[box7 titleLabel]text] == [[box8 titleLabel]text]) && ([[box7 titleLabel]text] == [[box9 titleLabel]text]) && ([[[box7 titleLabel]text]  isEqual: @"X"])) ||
        
        (([[box1 titleLabel]text] == [[box5 titleLabel]text]) && ([[box1 titleLabel]text] == [[box9 titleLabel]text]) && ([[[box1 titleLabel]text]  isEqual: @"X"])) ||
        
        (([[box3 titleLabel]text] == [[box5 titleLabel]text]) && ([[box3 titleLabel]text] == [[box7 titleLabel]text]) && ([[[box3 titleLabel]text]  isEqual: @"X"])) ||
        
        (([[box1 titleLabel]text] == [[box4 titleLabel]text]) && ([[box1 titleLabel]text] == [[box7 titleLabel]text]) && ([[[box1 titleLabel]text]  isEqual: @"X"])) ||
        
        (([[box2 titleLabel]text] == [[box5 titleLabel]text]) && ([[box2 titleLabel]text] == [[box8 titleLabel]text]) && ([[[box2 titleLabel]text]  isEqual: @"X"])) ||
        
        (([[box3 titleLabel]text] == [[box6 titleLabel]text]) && ([[box3 titleLabel]text] == [[box9 titleLabel]text]) && ([[[box3 titleLabel]text]  isEqual: @"X"]))) {
        
        box1.enabled = NO; box2.enabled = NO; box3.enabled = NO; box4.enabled = NO; box5.enabled = NO; box6.enabled = NO; box7.enabled = NO; box8.enabled = NO; box9.enabled = NO;
        
        [self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f];
        //NSLog(@"X won");
        status.text = @"Player 1 won! Play another game?";
        twoPlayer.enabled = YES;
        onePlayer.enabled = YES;
        firstMove.hidden = YES;
        
    }
    
    // All possible wins for O <---better way to do this?
    if ((([[box1 titleLabel]text] == [[box2 titleLabel]text]) && ([[box1 titleLabel]text] == [[box3 titleLabel]text]) && ([[[box1 titleLabel]text]  isEqual: @"O"])) ||
        
        (([[box4 titleLabel]text] == [[box5 titleLabel]text]) && ([[box4 titleLabel]text] == [[box6 titleLabel]text]) && ([[[box4 titleLabel]text]  isEqual: @"O"])) ||
        
        (([[box7 titleLabel]text] == [[box8 titleLabel]text]) && ([[box7 titleLabel]text] == [[box9 titleLabel]text]) && ([[[box7 titleLabel]text]  isEqual: @"O"])) ||
        
        (([[box1 titleLabel]text] == [[box5 titleLabel]text]) && ([[box1 titleLabel]text] == [[box9 titleLabel]text]) && ([[[box1 titleLabel]text]  isEqual: @"O"])) ||
        
        (([[box3 titleLabel]text] == [[box5 titleLabel]text]) && ([[box3 titleLabel]text] == [[box7 titleLabel]text]) && ([[[box3 titleLabel]text]  isEqual: @"O"])) ||
        
        (([[box1 titleLabel]text] == [[box4 titleLabel]text]) && ([[box1 titleLabel]text] == [[box7 titleLabel]text]) && ([[[box1 titleLabel]text]  isEqual: @"O"])) ||
        
        (([[box2 titleLabel]text] == [[box5 titleLabel]text]) && ([[box2 titleLabel]text] == [[box8 titleLabel]text]) && ([[[box2 titleLabel]text]  isEqual: @"O"])) ||
        
        (([[box3 titleLabel]text] == [[box6 titleLabel]text]) && ([[box3 titleLabel]text] == [[box9 titleLabel]text]) && ([[[box3 titleLabel]text]  isEqual: @"O"]))) {
        
        box1.enabled = NO; box2.enabled = NO; box3.enabled = NO; box4.enabled = NO; box5.enabled = NO; box6.enabled = NO; box7.enabled = NO; box8.enabled = NO; box9.enabled = NO;
        
        [self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f];
        //NSLog(@"O won");
        status.text = @"Player 2 won! Play another game?";
        twoPlayer.enabled = YES;
        onePlayer.enabled = YES;
        firstMove.hidden = YES;
    }
    if(([[[box1 titleLabel]text]  isEqual: @"X"] || [[[box1 titleLabel]text]  isEqual: @"O"]) && ([[[box2 titleLabel]text]  isEqual: @"X"] || [[[box2 titleLabel]text]  isEqual: @"O"]) && ([[[box3 titleLabel]text]  isEqual: @"X"] || [[[box3 titleLabel]text]  isEqual: @"O"]) && ([[[box4 titleLabel]text]  isEqual: @"X"] || [[[box4 titleLabel]text]  isEqual: @"O"]) && ([[[box5 titleLabel]text]  isEqual: @"X"] || [[[box5 titleLabel]text]  isEqual: @"O"]) && ([[[box6 titleLabel]text]  isEqual: @"X"] || [[[box6 titleLabel]text]  isEqual: @"O"]) && ([[[box7 titleLabel]text]  isEqual: @"X"] || [[[box7 titleLabel]text]  isEqual: @"O"]) && ([[[box8 titleLabel]text]  isEqual: @"X"] || [[[box8 titleLabel]text]  isEqual: @"O"]) && ([[[box9 titleLabel]text]  isEqual: @"X"] || [[[box9 titleLabel]text]  isEqual: @"O"])) {
        box1.enabled = NO; box2.enabled = NO; box3.enabled = NO; box4.enabled = NO; box5.enabled = NO; box6.enabled = NO; box7.enabled = NO; box8.enabled = NO; box9.enabled = NO;
        [self performSelector:@selector(resetBoard) withObject:nil afterDelay:2.0f];
        //NSLog(@"Tie!");
        status.text = @"It's a tie! Play another game?";
        twoPlayer.enabled = YES;
        onePlayer.enabled = YES;
        firstMove.hidden = YES;
    }
}

- (void)resetBoard {
    [box1 setTitle:@" " forState:UIControlStateNormal]; [box1 setEnabled:YES];
    [box2 setTitle:@" " forState:UIControlStateNormal]; [box2 setEnabled:YES];
    [box3 setTitle:@" " forState:UIControlStateNormal]; [box3 setEnabled:YES];
    
    [box4 setTitle:@" " forState:UIControlStateNormal]; [box4 setEnabled:YES];
    [box5 setTitle:@" " forState:UIControlStateNormal]; [box5 setEnabled:YES];
    [box6 setTitle:@" " forState:UIControlStateNormal]; [box6 setEnabled:YES];
    
    [box7 setTitle:@" " forState:UIControlStateNormal]; [box7 setEnabled:YES];
    [box8 setTitle:@" " forState:UIControlStateNormal]; [box8 setEnabled:YES];
    [box9 setTitle:@" " forState:UIControlStateNormal]; [box9 setEnabled:YES];
    firstMove.selectedSegmentIndex = -1; //set it to not be select
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    player = 1;
    isTwoPlayer = YES;
    firstMove.selectedSegmentIndex = -1; //set it to not be select
    status.text = @"Choose your type of game...";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
