//
//  AppDelegate.m
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "startGameViewController.h"

#import "FirstViewiPadController.h"
#import "SecondViewiPadController.h"
#import "ThirdViewiPadController.h"
#import "startGameiPadViewController.h"
#import "QutionaryService.h"

#import <CoreData/CoreData.h>
#import "DataManagement.h"
#import "Questionary.h"
@implementation AppDelegate

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    // Override point for customization after application launch.
  
    [[UIApplication sharedApplication] registerForRemoteNotificationTypes:
     (UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)];
    
    DataManagement *database = [DataManagement DatabaseManagement];
    database._context = [self managedObjectContext];
    
    

    if (self.window.bounds.size.height == 480)
    {
        NSLog(@"iphone4 ");
        NSString *filename = @"splash_ip4";
        NSLog(@"filename = %@",filename);
        NSString *videoPath = [[NSBundle mainBundle] pathForResource:filename ofType:@"mov"];
        NSURL *streamURL = [NSURL fileURLWithPath:videoPath];
        NSLog(@"streamURL = %@",streamURL);
        player = [[MPMoviePlayerController alloc] initWithContentURL: streamURL];
        [player prepareToPlay];
        player.view.frame = CGRectMake(0, 0, self.window.bounds.size.width, self.window.bounds.size.height);
        [player setFullscreen:NO animated:NO];
        player.controlStyle = MPMovieControlStyleNone;
        [self.window addSubview:player.view];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playerPlaybackDidFinish:) name:MPMoviePlayerPlaybackDidFinishNotification object:player];
        
        
    }
    else if (self.window.bounds.size.height == 568)
    {
        NSLog(@"iphone5");
        NSString *filename = @"splash_ip5";
        NSLog(@"filename = %@",filename);
        NSString *videoPath = [[NSBundle mainBundle] pathForResource:filename ofType:@"mov"];
        NSURL *streamURL = [NSURL fileURLWithPath:videoPath];
        NSLog(@"streamURL = %@",streamURL);
        player = [[MPMoviePlayerController alloc] initWithContentURL: streamURL];
        [player prepareToPlay];
        player.view.frame = CGRectMake(0, 0, self.window.bounds.size.width, self.window.bounds.size.height);
        [player setFullscreen:NO animated:NO];
        player.controlStyle = MPMovieControlStyleNone;
        [self.window addSubview:player.view];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playerPlaybackDidFinish:) name:MPMoviePlayerPlaybackDidFinishNotification object:player];
        
    }
    else
    {
        NSString *filename = @"splash_ipad";
        NSLog(@"filename = %@",filename);
        NSString *videoPath = [[NSBundle mainBundle] pathForResource:filename ofType:@"mov"];
        NSURL *streamURL = [NSURL fileURLWithPath:videoPath];
        NSLog(@"streamURL = %@",streamURL);
        player = [[MPMoviePlayerController alloc] initWithContentURL: streamURL];
        [player prepareToPlay];
        player.view.frame = CGRectMake(0, 0, self.window.bounds.size.width, self.window.bounds.size.height);
        [player setFullscreen:NO animated:NO];
        player.controlStyle = MPMovieControlStyleNone;
        [self.window addSubview:player.view];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playerPlaybackDidFinish:) name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    }
    [self.window makeKeyAndVisible];
    
    
    QutionaryService *q = [[QutionaryService alloc] init];
    [q initial];
    
    

    
    
   
    

    
    /*
    NSString *deviceType = [UIDevice currentDevice].model;
    NSLog(@"%@",deviceType);
    if([deviceType isEqualToString:@"iPhone Simulator"])
    {
    
        UIViewController *viewController1 = [[[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil] autorelease];
        
        UIViewController *viewController2 = [[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil] autorelease];
    
        UIViewController *viewController3 = [[[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil] autorelease];
    
        UIViewController *viewController4 = [[[FourViewController alloc] initWithNibName:@"FourViewController" bundle:nil] autorelease];
    
    
        self.tabBarController = [[[UITabBarController alloc] init] autorelease];
        [self.tabBarController.tabBar setFrame:CGRectMake(0, self.window.frame.size.height - 80, self.window.frame.size.width, 80)];
        self.tabBarController.viewControllers = @[viewController1, viewController2, viewController3, viewController4];
        NSLog(@"iPhone");
        self.window.rootViewController = self.tabBarController;
        [self.window makeKeyAndVisible];
    }
    else if([deviceType isEqualToString:@"iPad Simulator"])
    {
        
        UIViewController *viewController1iPad = [[[FirstViewiPadController alloc] initWithNibName:@"FirstViewiPadController" bundle:nil] autorelease];
        
        UIViewController *viewController2iPad = [[[SecondViewiPadController alloc] initWithNibName:@"SecondViewiPadController" bundle:nil] autorelease];
        
        UIViewController *viewController3iPad = [[[ThirdViewiPadController alloc] initWithNibName:@"ThirdViewiPadController" bundle:nil] autorelease];
        
        UIViewController *viewController4iPad = [[[FourViewiPadController alloc] initWithNibName:@"FourViewiPadController" bundle:nil] autorelease];
        
        
        self.tabBarController = [[[UITabBarController alloc] init] autorelease];
        [self.tabBarController.tabBar setFrame:CGRectMake(0, self.window.frame.size.height - 80, self.window.frame.size.width, 80)];
        self.tabBarController.viewControllers = @[viewController1iPad, viewController2iPad, viewController3iPad, viewController4iPad];
        NSLog(@"iPad");
        self.window.rootViewController = self.tabBarController;
        [self.window makeKeyAndVisible];
    }
    */
    return YES;
}
-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    
    NSString *toket = [NSString stringWithFormat:@"%@",deviceToken];
    
    

    
    NSLog(@"token:%@",toket);
}

#pragma mark Core Data stack

/**
 Returns the managed object context for the application.
 If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
 */
- (NSManagedObjectContext *) managedObjectContext {
	
    if (managedObjectContext != nil) {
        return managedObjectContext;
    }
	
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        managedObjectContext = [[NSManagedObjectContext alloc] init];
        [managedObjectContext setPersistentStoreCoordinator: coordinator];
    }
    return managedObjectContext;
}


/**
 Returns the managed object model for the application.
 If the model doesn't already exist, it is created by merging all of the models found in the application bundle.
 */
- (NSManagedObjectModel *)managedObjectModel {
	
    if (managedObjectModel != nil) {
        return managedObjectModel;
    }
    managedObjectModel = [[NSManagedObjectModel mergedModelFromBundles:nil] retain];
    return managedObjectModel;
}


/**
 Returns the persistent store coordinator for the application.
 If the coordinator doesn't already exist, it is created and the application's store added to it.
 */
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
	
    if (persistentStoreCoordinator != nil) {
        return persistentStoreCoordinator;
    }
	
    NSURL *storeUrl = [NSURL fileURLWithPath: [[self applicationDocumentsDirectory] stringByAppendingPathComponent: @"LearningZoneDB.sqlite"]];
	
	NSError *error = nil;
    persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    
    if (![persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeUrl options:nil error:&error]) {
		/*
		 Replace this implementation with code to handle the error appropriately.
		 
		 abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
		 
		 Typical reasons for an error here include:
		 * The persistent store is not accessible
		 * The schema for the persistent store is incompatible with current managed object model
		 Check the error message to determine what the actual problem was.
		 */
		////NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
    }
	
    return persistentStoreCoordinator;
}
- (NSString *)applicationDocumentsDirectory {
	return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}


- (void)playerPlaybackDidFinish:(MPMoviePlayerController *)vdo
{
    [player.view removeFromSuperview];
    NSString *deviceType = [UIDevice currentDevice].model;
    NSLog(@"%@",deviceType);
    if([deviceType isEqualToString:@"iPhone Simulator"] || [deviceType isEqualToString:@"iPhone"])
    {
        UIViewController *viewController1 = [[[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil] autorelease];
        
        UIViewController *viewController2 = [[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil] autorelease];
        
        UIViewController *viewController3 = [[[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil] autorelease];
        
        UIViewController *viewController4 = [[[startGameViewController alloc] initWithNibName:@"startGameViewController" bundle:nil] autorelease];
        
        UINavigationController *navi2 = [[UINavigationController alloc] initWithRootViewController:viewController2];
        navi2.navigationBarHidden = YES;
        
        UINavigationController *navi3 = [[UINavigationController alloc] initWithRootViewController:viewController3];
        navi3.navigationBarHidden = YES;
        
        UINavigationController *navi4 = [[UINavigationController alloc] initWithRootViewController:viewController4];
        navi4.navigationBarHidden = YES;
        
        self.tabBarController = [[[UITabBarController alloc] init] autorelease];
        [self.tabBarController.tabBar setFrame:CGRectMake(0, self.window.frame.size.height - 50, self.window.frame.size.width, 60)];
        self.tabBarController.viewControllers = @[viewController1, navi2, navi3, navi4];
        self.window.rootViewController = self.tabBarController;
    }
    else
    {
        UIViewController *viewController1iPad = [[[FirstViewiPadController alloc] initWithNibName:@"FirstViewiPadController" bundle:nil] autorelease];
        
        UIViewController *viewController2iPad = [[[SecondViewiPadController alloc] initWithNibName:@"SecondViewiPadController" bundle:nil] autorelease];
        
        UIViewController *viewController3iPad = [[[ThirdViewiPadController alloc] initWithNibName:@"ThirdViewiPadController" bundle:nil] autorelease];
        
        UIViewController *viewController4iPad = [[[startGameiPadViewController alloc] initWithNibName:@"startGameiPadViewController" bundle:nil] autorelease];
        
        UINavigationController *navi2iPad = [[UINavigationController alloc] initWithRootViewController:viewController2iPad];
        navi2iPad.navigationBarHidden = YES;
        
        UINavigationController *navi3iPad = [[UINavigationController alloc] initWithRootViewController:viewController3iPad];
        navi3iPad.navigationBarHidden = YES;
        
        UINavigationController *navi4iPad = [[UINavigationController alloc] initWithRootViewController:viewController4iPad];
        navi4iPad.navigationBarHidden = YES;
        
        self.tabBarController = [[[UITabBarController alloc] init] autorelease];
        [self.tabBarController.tabBar setFrame:CGRectMake(0, self.window.frame.size.height - 80, self.window.frame.size.width, 90)];
        self.tabBarController.viewControllers = @[viewController1iPad, navi2iPad, navi3iPad, navi4iPad];
        self.window.rootViewController = self.tabBarController;
        [self.window makeKeyAndVisible];
        
    }
    
        Questionary *ques  = (Questionary*)[[[DataManagement DatabaseManagement] getQuestionary] lastObject];
    if([ques.flag isEqualToString:@"N"]){
        
        UIAlertView *al = [[UIAlertView alloc] initWithTitle:@"Questionnaire" message:@"Please complete the questionnaire."
                                                    delegate:self
                                           cancelButtonTitle:@"Skip"
                                           otherButtonTitles:@"Ok", nil];
        
        al.delegate  =self;
        [al show];
        
    }

    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    Questionary *ques  = (Questionary*)[[[DataManagement DatabaseManagement] getQuestionary] lastObject];
    switch (buttonIndex) {
        case 0:
        {
            NSLog(@"PRESS SKIP");
            
            NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
            [dic setObject:@"N" forKey:@"flag"];
            [dic setObject:ques.url forKey:@"url"];
            [[DataManagement DatabaseManagement] saveQuestion:dic];
        }
            break;
        case 1:
        {
            NSLog(@"PRESS OK");
            NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
            [dic setObject:@"Y" forKey:@"flag"];
            [dic setObject:ques.url forKey:@"url"];
            [[DataManagement DatabaseManagement] saveQuestion:dic];
            
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:ques.url]];
            /*
                UIWebView *webView = [[UIWebView alloc] init];
                [webView setFrame:CGRectMake(0, 0, 320, 460)];
                [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:ques.url]]];
                [self.window addSubview:webView];
                [self.window makeKeyAndVisible];
             */

        }
            break;
        default:
            break;
    }
    
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}




@end
