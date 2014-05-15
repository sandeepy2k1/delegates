//
//  ViewController.m
//  delegates
//
//  Created by Sandeep Saurabh on 15/05/14.
//  Copyright (c) 2014 Sandeep Saurabh. All rights reserved.
//

#import "ViewController.h"
#import "SampleProtocol.h"
@interface ViewController ()<SampleProtocolDelegate>
{
     IBOutlet UILabel *myLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
    [myLabel setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Sample protocol delegate
-(void)processCompleted{
    [myLabel setText:@"Process Completed"];
    self.view.backgroundColor =[UIColor greenColor];
}

@end
