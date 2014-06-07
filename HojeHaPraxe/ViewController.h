//
//  ViewController.h
//  HojeHaPraxe
//
//  Created by David Gomes on 07/06/14.
//  Copyright (c) 2014 jeKnowledge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) NSMutableDictionary *result;

//Display Info Function
-(void)displayInfo;

//Background Image
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;

//Dynamic Text Labels
@property (weak, nonatomic) IBOutlet UILabel *haPraxeLabel;
@property (weak, nonatomic) IBOutlet UILabel *reasonLabel;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;

@end
