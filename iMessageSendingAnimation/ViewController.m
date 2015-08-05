//
//  ViewController.m
//  iMessageSendingAnimation
//
//  Created by Rajesh on 7/1/15.
//  Copyright (c) 2015 Org. All rights reserved.
//

#import "ViewController.h"
#import "SendingIndicatorView.h"

@interface ViewController ()
{
    SendingIndicatorView *sendingIndicatorView;
}
- (IBAction)startAnimationTapped:(id)sender;
- (IBAction)endAnimationTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    sendingIndicatorView = [[SendingIndicatorView alloc] initWithFrame:self.view.frame andIndicationColor:[UIColor greenColor]];
    [self.view addSubview:sendingIndicatorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)startAnimationTapped:(id)sender
{
    [sendingIndicatorView startAnimating];
}

- (IBAction)endAnimationTapped:(id)sender
{
    [sendingIndicatorView stopAnimating];
}
@end
