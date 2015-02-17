//
//  Usuario.m
//  Genius
//
//  Created by Gabriel Alberto de Jesus Preto on 16/02/15.
//  Copyright (c) 2015 Gabriel Alberto de Jesus Preto. All rights reserved.
//

#import "Usuario.h"

@implementation Usuario

@synthesize score, username;

-(instancetype) initWithUsername:(NSString*)user andScore:(NSInteger*)high{
    self = [super init];
    if (self){
        score = high;
        username  = user;
    }
    return self;
}

@end
