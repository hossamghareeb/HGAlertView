//
//  HGAlertView.m
//  Hossam Ghareeb
//
//  Created by Hossam on 3/16/14.
//  Copyright (c) 2014 Hossam. All rights reserved.
//

#import "HGAlertView.h"

@interface HGAlertView ()

@property (nonatomic, strong) HGAlerViewCompletionHandler handler;


@end
@implementation HGAlertView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)init
{
    self  = [super init];
    if (self) {
        self.delegate = self;
    }
    
    return self;
}

-(id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
    if (self) {
        self.delegate = self;
    }
    return self;
}

-(void)showWithCompltionHandler:(HGAlerViewCompletionHandler)handler
{
    self.handler = handler;
    [super show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    self.handler(self, buttonIndex);
}

@end
