//
//  DetailsViewiPad.h
//  LearningZone
//
//  Created by ShinPleZ on 11/10/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewiPad : UIViewController<UIWebViewDelegate>
{
    IBOutlet UILabel *topicName;
    IBOutlet UIWebView *webview;
    NSString *nameTopic;
    NSString *nameFile;
}
-(void)initData:(NSString *)tName with:(NSString *)tView;
-(IBAction)back:(id)sender;


@end
