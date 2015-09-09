//
//  fortuneCookiesViewController.h
//  game
//
//  Created by IMRAN ISMAIL on 5/09/15.
//  Copyright (c) 2015 Nazreen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fortuneCookiesViewController : UIViewController

{
    NSArray *arrayImg;
    int index;
    BOOL flag;
    
    __weak IBOutlet UILabel *headingLabel;
    
    __weak IBOutlet UILabel *subHeadingLabel;
    
    __weak IBOutlet UIButton *button1;
}

@property (weak, nonatomic) IBOutlet UIImageView *showImage;


- (IBAction)buttonPressed:(id)sender;


@end
