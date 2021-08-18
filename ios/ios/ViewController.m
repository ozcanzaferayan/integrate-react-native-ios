//
//  ViewController.m
//  ios
//
//  Created by Zafer AYAN on 18.08.2021.
//

#import "ViewController.h"
#import <React/RCTRootView.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)clicked:(id)sender {
    NSLog(@"High Score Button Pressed");
//     NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
     RCTRootView *rootView =
       [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                   moduleName: @"RNHighScores"
                            initialProperties:
                              @{
                                @"scores" : @[
                                  @{
                                    @"name" : @"Alex",
                                    @"value": @"42"
                                   },
                                  @{
                                    @"name" : @"Joel",
                                    @"value": @"10"
                                  }
                                ]
                              }
                                launchOptions: nil];
     UIViewController *vc = [[UIViewController alloc] init];
     vc.view = rootView;
     [self presentViewController:vc animated:YES completion:nil];
}


@end
