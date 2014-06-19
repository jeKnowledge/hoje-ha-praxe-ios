//
//  APIObject.m
//  HojeHaPraxe
//
//  Created by João Bernardo on 07/06/14.
//  Copyright (c) 2014 jeKnowledge. All rights reserved.
//

#import "APIObject.h"

@implementation APIObject

//Function fetches data from server
-(NSMutableDictionary *)fetchData
{
    NSData *praxeData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://jbernardo.com/result.html"]];
    
    NSError *error;
    
    if (praxeData == nil) // Error: server not available
    {
        return nil;
    }
    else
    {
        NSMutableDictionary *praxeDataOrganized = [NSJSONSerialization JSONObjectWithData:praxeData options: NSJSONReadingMutableContainers error:&error];
        if(error) // Error: JSON parsing failed
        {
            return nil;
        }
        else
        {
            return praxeDataOrganized;
        }
    }
}


@end
