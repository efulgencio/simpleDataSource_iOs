//
//  AppDelegate.m
//  WordsEngEFC
//
//  Created by eduardo fulgencio on 1/12/15.
//  Copyright © 2015 eduardo fulgencio. All rights reserved.
//


#import "AppDelegate.h"
#import "WordsViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


+ (instancetype)sharedDelegate
{
    return [UIApplication sharedApplication].delegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    WordsViewController *wordsViewController =
            [[WordsViewController alloc]  initWithNibName:@"WordsViewController" bundle:nil];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:wordsViewController];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    
    return YES;
    
}





@end
