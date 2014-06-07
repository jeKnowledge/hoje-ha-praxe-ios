//
//  ViewController.m
//  HojeHaPraxe
//
//  Created by David Gomes on 07/06/14.
//  Copyright (c) 2014 jeKnowledge. All rights reserved.
//

#import "ViewController.h"

// THe APIObject class.
@interface APIObject : NSObject
@property (strong, nonatomic) NSString *hapraxe;
@property (strong, nonatomic) NSString *reason;
@property (strong, nonatomic) NSString *notification;
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"praxeappbg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
