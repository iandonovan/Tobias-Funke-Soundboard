//
//  ViewController.h
//  iPad Apps Soundboard
//
//  Created by Ian Donovan on 2/12/12.
//  Copyright (c) 2012 Tufts University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (strong) AVAudioPlayer *player;

//The IBOutlet is used to associate properties in the app with components in the IB.
-(IBAction)buttonTriggered:(id)sender;
-(IBAction)YouTube:(id)sender;

@end
