//
//  FourViewController.m
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "FourViewController.h"
#import "endGameViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //self.tabBarItem.image = [UIImage imageNamed:@"game_normal.png"];
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [topicTabbar setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
    [topic setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [label1 setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [label2 setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [score setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [num setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [topic2 setFont:[UIFont fontWithName:@"Quark-Light" size:20]];
}
-(void)viewDidAppear:(BOOL)animated
{
    count = 0;
    scoreInt = 0;
    
    NSArray *myArray1 = [NSArray arrayWithObjects:@"1",@"0",@"1",@"0",@"1",@"1",@"0",@"1",@"0",@"1",nil];
    NSArray *myArray2 = [NSArray arrayWithObjects:@"1",@"0",@"1",@"0",@"1",@"1",@"0",@"1",@"1",@"0",nil];
    NSArray *myArray3 = [NSArray arrayWithObjects:@"0",@"0",@"1",@"0",@"1",@"1",@"0",@"1",@"1",@"0",nil];
    
    NSArray *tArr1 = [NSArray arrayWithObjects:
                     @"Which of the following is correct in terms of the invitation on table manner?",
                     @"How does the inviter name the invitee on the invitation card?",
                     @"Can the inviter allow making only one invitation card to a couple that has not been married?",
                     @"What time should the invitee be before the party starts?",
                     @"How should you react when you split water or drop the fork?",
                     @"Can the invitee sit wherever they want in a formal party?",
                     @"Which situation is the most appropriate to meet the inviter when you arrive at the party?",
                     @"How should you do when you sit on the same table with strangers?",
                     @"“I love my wife so much, therefore I would like to sit with her.” According to this statement, is it considered to be a good manner?",
                     @"Which side of men should women be sit?",
                     nil];
    
    NSArray *tempAnswer1 = [NSArray arrayWithObjects:
                 @"Invite only one person",
                 @"Write the name of the husband and follow by the name of wife",
                 @"Yes",
                 @"15 Minutes",
                 @"Call the waiter",
                 @"Yes",
                 @"Meet right after you arrive",
                 @"Sit and eat without talking to anyone",
                 @"No",
                 @"On the left side of men",
                 nil];
    NSArray *tempAnswer2 = [NSArray arrayWithObjects:
               @"Invite both husband and wife",
               @"Write family name",
               @"No",
               @"5 Minutes",
               @"Stay still",
               @"No",
               @"Meet after the party is over",
               @"Try to talk to the others",
               @"Yes",
               @"On the right side of women",
               nil];
    
    UIImage *image1_1 = [UIImage imageNamed:@"q1.png"];
    UIImage *image1_2 = [UIImage imageNamed:@"q2.png"];
    UIImage *image1_3 = [UIImage imageNamed:@"q3.png"];
    UIImage *image1_4 = [UIImage imageNamed:@"q4.png"];
    UIImage *image1_5 = [UIImage imageNamed:@"q5.png"];
    UIImage *image1_6 = [UIImage imageNamed:@"q6.png"];
    UIImage *image1_7 = [UIImage imageNamed:@"q7.png"];
    UIImage *image1_8 = [UIImage imageNamed:@"q8.png"];
    UIImage *image1_9 = [UIImage imageNamed:@"q9.png"];
    UIImage *image1_10 = [UIImage imageNamed:@"q10.png"];
    
    NSArray *imgArray1 = [NSArray arrayWithObjects:image1_1,image1_2,image1_3,image1_4,image1_5,image1_6,image1_7,image1_8,image1_9,image1_10,nil];
    
    NSArray *imgArray2 = [NSArray arrayWithObjects:image1_3,image1_2,image1_2,image1_1,image1_2,image1_3,image1_1,image1_2,image1_3,image1_3,nil];
    
    NSArray *imgArray3 = [NSArray arrayWithObjects:image1_2,image1_3,image1_1,image1_1,image1_2,image1_3,image1_1,image1_2,image1_3,image1_3,nil];
    
    //int myNumber = arc4random() % 10;
    int myNumber = 0;
    NSLog(@"myNumber = %d",myNumber);
    switch (myNumber) {
        case 0:
            answerArr = [[NSArray alloc]initWithArray:myArray1];
            imageArr =  [[NSArray alloc]initWithArray:imgArray1];
            topicArr =  [[NSArray alloc]initWithArray:tArr1];
            answer1 = [[NSArray alloc]initWithArray:tempAnswer1];
            answer2 = [[NSArray alloc]initWithArray:tempAnswer2];
            break;
        case 1:
            answerArr = [[NSArray alloc]initWithArray:myArray2];
            imageArr = [[NSArray alloc]initWithArray:imgArray2];
            break;
        case 2:
            answerArr = [[NSArray alloc]initWithArray:myArray3];
            imageArr = [[NSArray alloc]initWithArray:imgArray3];
            break;
        default:
            answerArr = [[NSArray alloc]initWithArray:myArray1];
            imageArr = [[NSArray alloc]initWithArray:imgArray1];
            break;
    }
    
    timer = [NSTimer scheduledTimerWithTimeInterval:7.0
                                             target:self
                                           selector:@selector(updateTimer)
                                           userInfo:nil
                                            repeats:YES];
    
    [image setImage:[imageArr objectAtIndex:0]];
    [topic setText:[topicArr objectAtIndex:0]];
    topic.numberOfLines = 3;
    [num setText:[NSString stringWithFormat:@"%d",1]];
    [score setText:@"0"];
    [answerLabel1 setText:[answer1 objectAtIndex:0]];
    [answerLabel2 setText:[answer2 objectAtIndex:0]];
    
}
-(void)viewWillDisappear:(BOOL)animated
{
    if (timer) {
        [timer invalidate];
        timer = nil;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)selectTrue:(id)sender
{
    [self checkSum:0];
}
-(IBAction)selectFalse:(id)sender
{
    [self checkSum:1];
}
-(void)checkSum:(int)sum
{
    [timer invalidate];
    timer = nil;
    
//    NSLog(@"count = %d",count);
//    NSLog(@"count answerArr = %d",[answerArr count]);
    
    if (count < [answerArr count])
    {
        int check = [[answerArr objectAtIndex:count] intValue];
        NSLog(@"count = %d",count);
        
        if (sum == check)
        {
            scoreInt++;
        }
        [score setText:[NSString stringWithFormat:@"%d",scoreInt]];
        count++;
        if (count < [imageArr count])
        {
            [answerLabel1 setText:[answer1 objectAtIndex:count]];
            [answerLabel2 setText:[answer2 objectAtIndex:count]];
            [topic setText:[topicArr objectAtIndex:count]];
            [image setImage:[imageArr objectAtIndex:count]];
            [num setText:[NSString stringWithFormat:@"%d",count+1]];
        }
    }
    
    timer = [NSTimer scheduledTimerWithTimeInterval:7.0
                                             target:self
                                           selector:@selector(updateTimer)
                                           userInfo:nil
                                            repeats:YES];
    if (count == 10)
    {
        NSLog(@"Time Up 1");
        if (timer) {
            [timer invalidate];
            timer = nil;
        }
        [self gameOver];
    }
}
-(void)updateTimer
{
    count++;
//    NSLog(@"count = %d",count);
//    NSLog(@"count imageArr = %d",[imageArr count]);
    if (count < [imageArr count])
    {
        [answerLabel1 setText:[answer1 objectAtIndex:count]];
        [answerLabel2 setText:[answer2 objectAtIndex:count]];
        [topic setText:[topicArr objectAtIndex:count]];
        [image setImage:[imageArr objectAtIndex:count]];
        [num setText:[NSString stringWithFormat:@"%d",count+1]];
    }
    else
    {
        if (timer) {
            [timer invalidate];
            timer = nil;
        }
    }
    
    if (count == 10)
    {
        NSLog(@"Time Up 2");
        if (timer) {
            [timer invalidate];
            timer = nil;
        }
        //[self gameOver];
        //[NSThread detachNewThreadSelector:@selector(gameOver) toTarget:self withObject:nil];
    }

}
-(void)gameOver
{
    endView = [[endGameViewController alloc] initWithNibName:@"endGameViewController" bundle:nil];
    [endView initScore:[NSString stringWithFormat:@"%d",scoreInt]];
    [self.navigationController pushViewController:endView animated:YES];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
