//
//  ViewController.m
//  HojeHaPraxe
//
//  Created by David Gomes on 07/06/14.
//  Copyright (c) 2014 jeKnowledge. All rights reserved.
//

#import "ViewController.h"
#import "APIObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    APIObject *api = [[APIObject alloc] init];
    self.result = [api fetchData];
    
    if (self.result!=nil)
    {
        [self displayInfo];
    }
    else
    {
        self.haPraxeLabel.text = [NSString stringWithFormat:@"Erro na ligação ao servidor."];
        self.reasonLabel.text = [NSString stringWithFormat:@""];
        self.notificationLabel.text = [NSString stringWithFormat:@""];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)displayInfo
{
    NSString *hapraxe = [[NSString alloc] init];
    hapraxe = [self.result objectForKey:@"hapraxe"];
    
    if ([hapraxe isEqualToString:@"true"])
    {
        self.haPraxeLabel.text = [NSString stringWithFormat:@"Hoje pode haver praxe em Coimbra."];
        self.reasonLabel.text = [NSString stringWithFormat:@""];
        self.notificationLabel.text = [self.result objectForKey:@"notification"];
    }
    else if ([hapraxe isEqualToString:@"false"])
    {
        self.haPraxeLabel.text = [NSString stringWithFormat:@"Hoje não pode haver praxe em Coimbra."];
        self.reasonLabel.text = [self.result objectForKey:@"reason"];
        self.notificationLabel.text = [self.result objectForKey:@"notification"];
    }
}

@end
