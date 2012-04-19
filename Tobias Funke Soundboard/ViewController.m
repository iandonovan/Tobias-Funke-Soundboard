//
//  ViewController.m
//  iPad Apps Soundboard
//
//  Created by Ian Donovan on 2/12/12.
//  Copyright (c) 2012 Tufts University. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize player;

//IBAction is used to allow methods to be associated with actions in IB

-(IBAction)buttonTriggered:(id)sender
{
    UIButton *daButton = (UIButton*)sender;
    NSError *audioError;
    
    if(daButton.tag == 1010)
    {
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"About Page"
                                                      message:@"Developed by Ian Donovan.\n Version 1.0"
                                                     delegate:self
                                            cancelButtonTitle:@"Okay"
                                            otherButtonTitles:nil, nil];
        [view show];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Huzzah!"])
    {
        //Huzzah! Sound
        NSURL *HuzzahURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Huzzah.mp3", [[NSBundle mainBundle] resourcePath]]];
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:HuzzahURL error:&audioError];
        
    }
    
    else if([daButton.currentTitle isEqualToString:@"Thunder"])
    {
        //Hide My Thunder sound
        NSURL *ThunderURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Hide My Thunder.mp3",
                                                    [[NSBundle mainBundle] resourcePath]]];
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:ThunderURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"New York"])
    {
        //New York, New York sound
        NSURL *NYURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/New York, New York.mp3", [[NSBundle mainBundle] resourcePath]]];
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:NYURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Rainbow"])
    {
        //Somewhere over the rainbow sound
        NSURL *RainbowURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Somewhere Over The Rainbow.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:RainbowURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Elephant"])
    {
        //Hide of an elephant sound
        NSURL *ElephantURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Hide Of An Elephant.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:ElephantURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Fizellas"])
    {
        //Hey Fizellas sound
        NSURL *FizellasURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Hey Fizellas.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:FizellasURL error:&audioError];
   }
    
    else if([daButton.currentTitle isEqualToString:@"Fire Sale"])
    {
        //Fire Sale sound
        NSURL *FireSaleURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Fire Sale.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:FireSaleURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Blue Myself"])
    {
        //Blue Myself sound
        NSURL *BlueURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Blue Myself.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:BlueURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Teamocil"])
    {
        //Teamocil sound
        NSURL *TeamocilURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Teamocil.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:TeamocilURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Selfish"])
    {
        //Selfish Cuntry sound
        NSURL *SelfishURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Selfish Cuntry.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:SelfishURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Chubby"])
    {
        //Chubby sound
        NSURL *ChubbyURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Take A Chubby.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:ChubbyURL error:&audioError];
    }
    
    else if([daButton.currentTitle isEqualToString:@"Dozens"])
    {
        //Dozens sound
        NSURL *DozensURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/There Are Dozens Of Us.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:DozensURL error:&audioError];
    }
    
    if (player)
        [player play];
    
}

-(IBAction)YouTube:(id)sender
{
    UIButton *theButton = (UIButton*)sender;
    
    if([theButton.currentTitle isEqualToString:@"Best Of"])
    {
        NSString* videoStringURL = @"http://www.youtube.com/watch?v=5posU08HjXg";
        NSURL* videoURL = [NSURL URLWithString:videoStringURL];
        [[UIApplication sharedApplication] openURL:videoURL];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [player prepareToPlay];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
