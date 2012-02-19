//
//  ViewController.m
//  BundlePoc
//
//  Created by Rodrigo Garcia on 1/19/12.
//  Copyright (c) 2012 Excelsys Soluciones SpA. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *imgName = @"SettingsPoc.bundle/images/lolcat7.gif";
    UIImage *myImage = [UIImage imageNamed:imgName]; 
    lolCat.image = myImage;
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSBundle *bundle = [NSBundle bundleWithPath:[mainBundle pathForResource:@"SettingsPoc" ofType:@"bundle"]];
    
    NSString *pListPath2 = [bundle pathForResource:@"ColorsProperties" ofType:@"plist"];
    NSDictionary *dictionary2 = [[NSDictionary alloc] initWithContentsOfFile:pListPath2];
    NSArray *colors =[dictionary2 objectForKey:@"MB_WHITE_COLOR"];
    NSNumber *red = [colors objectAtIndex:0];
    NSNumber *green = [colors objectAtIndex:1];
    NSNumber *blue = [colors objectAtIndex:2];
    NSNumber *alpha = [colors objectAtIndex:3];
    UIColor *testColor = [UIColor colorWithRed:[red floatValue]/255.0 green:[green floatValue]/255.0 blue:[blue floatValue]/255.0 alpha:[alpha floatValue]];
    [actionButton setBackgroundColor:testColor];
    
	// Do any additional setup after loading the view, typically from a nib.
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
