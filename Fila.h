//
//  Fila.h
//  Genius
//
//  Created by Lidia Chou on 2/13/15.
//  Copyright (c) 2015 Lidia Chou. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>

@interface Fila : NSObject
{
    NSMutableArray *elementos;
//    NSInteger *inicio;
//    NSObject *numero;
//    int highScore;
//    int numRodadas;
//    NSString *user;
    
}

@property NSMutableArray *elementos;
//@property NSInteger *inicio;
//@property int highScore;
//@property int numRodadas;
//@property NSString *user;




-(void) enfileirar:(NSObject*)numero;
-(void) desenfileirar;
-(NSObject*) ler;
-(BOOL) vazio;


@end
