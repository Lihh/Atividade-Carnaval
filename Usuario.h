//
//  Usuario.h
//  Genius
//
//  Created by Gabriel Alberto de Jesus Preto on 16/02/15.
//  Copyright (c) 2015 Gabriel Alberto de Jesus Preto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Usuario : NSObject
{
    NSString *username;
    NSInteger *score;
}

@property NSString *username;
@property NSInteger *score;

//-(void)informaSequancia:(NSInteger)valor;

@end
