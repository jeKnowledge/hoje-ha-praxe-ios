//
//  ViewController.m
//  HojeHaPraxe
//
//  Created by David Gomes on 07/06/14.
//  Copyright (c) 2014 jeKnowledge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Display background image
    self.backgroundImage.image = [UIImage imageNamed:@"background.png" ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
