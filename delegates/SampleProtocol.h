//
//  SampleProtocol.h
//  delegates
//
//  Created by Sandeep Saurabh on 15/05/14.
//  Copyright (c) 2014 Sandeep Saurabh. All rights reserved.
//

#import <Foundation/Foundation.h>
// Protocol definition starts here
@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@end
@interface SampleProtocol : NSObject
{
    // Delegate to respond back
    id <SampleProtocolDelegate> _delegate;
    
}
@property (nonatomic,strong) id delegate;

-(void)startSampleProcess; // Instance method

@end