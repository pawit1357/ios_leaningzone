//
//  DetialsView.h
//  tech
//
//  Created by ShinPleZ on 9/16/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetialsView : UIViewController<UIWebViewDelegate>
{
    IBOutlet UILabel *topicName;
    IBOutlet UIWebView *webview;
    NSString *nameTopic;
    NSString *nameFile;
}
-(void)initData:(NSString *)tName with:(NSString *)tView;
-(IBAction)back:(id)sender;
@end
