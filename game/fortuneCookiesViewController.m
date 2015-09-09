//
//  fortuneCookiesViewController.m
//  game
//
//  Created by IMRAN ISMAIL on 5/09/15.
//  Copyright (c) 2015 Nazreen. All rights reserved.
//

#import "fortuneCookiesViewController.h"

@interface fortuneCookiesViewController ()

@end

@implementation fortuneCookiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrayImg = [[NSArray alloc]initWithObjects:
                [UIImage imageNamed:@"cookie1.jpg"],
                [UIImage imageNamed:@"cookie2.jpg"],
                [UIImage imageNamed:@"cookie3.jpg"],
                [UIImage imageNamed:@"cookie4.jpg"],
                [UIImage imageNamed:@"cookie5.jpg"],
                [UIImage imageNamed:@"cookie6.jpg"],
                [UIImage imageNamed:@"cookie7.jpg"],
                [UIImage imageNamed:@"cookie8.jpg"],
                [UIImage imageNamed:@"cookie9.jpg"],
                [UIImage imageNamed:@"cookie10.jpg"],
                nil];
    [_showImage setImage:[UIImage imageNamed:@"cookieClosed.jpg"]];
}

- (IBAction)buttonPressed:(id)sender {
    
    [_showImage setImage:[arrayImg objectAtIndex:index]];
    index = index == arrayImg.count - 1 ? 0 : index + 1;
    button1.hidden = YES;
    headingLabel.text = @"Your fortune for today is";
    subHeadingLabel.hidden = YES;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cookie Warning" message:@"Don't check on your next cookie, it will break your fortune" delegate:self cancelButtonTitle:@"I will take risk" otherButtonTitles:@"I need my fortune, will try tomorrow", nil];
    [alert show];
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    button1.hidden = YES;
    if (buttonIndex == 0){
        [_showImage setImage:[UIImage imageNamed:@"cookieClosed.jpg"]];
        button1.hidden = NO;
    }
    else
    {
        
        [_showImage setImage:[UIImage imageNamed:@"ThankYouForPlaying.jpg"]];
        button1.userInteractionEnabled = NO;
        button1.hidden = YES;
        self.view.backgroundColor = [UIColor blackColor];
    }
    headingLabel.text = @"Welcome to Fortune Cookies";
    subHeadingLabel.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end