//
//  HGAlertView.h
//  Hossam Ghareeb
//
//  Created by Hossam on 3/16/14.
//  Copyright (c) 2014 Hossam. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^HGAlerViewCompletionHandler)(id alertView, int buttonIndex);

@interface HGAlertView : UIAlertView <UIAlertViewDelegate>


-(id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitlesArr:(NSArray *)otherButtonTitles;
-(void)showWithCompltionHandler:(HGAlerViewCompletionHandler)handler;

@end
