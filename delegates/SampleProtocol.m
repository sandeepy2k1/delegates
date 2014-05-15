//
//  SampleProtocol.m
//  delegates
//
//  Created by Sandeep Saurabh on 15/05/14.
//  Copyright (c) 2014 Sandeep Saurabh. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol
-(void)startSampleProcess{
    
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self.delegate
                                   selector:@selector(processCompleted) userInfo:nil repeats:NO];
}
@end
