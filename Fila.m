//
//  Fila.m
//  Fila
//
//  Created by Fernando Lucheti on 06/02/15.
//  Copyright (c) 2015 Fernando Lucheti. All rights reserved.
//

#import "Fila.h"

@implementation Fila

-(id)init {
    self = [super init];
    elementos = [[NSMutableArray alloc]init];
    
    return self;
}
-(void) enfileirar:(NSObject *)elem {
    [elementos addObject: elem];
}
-(void) desenfileirar{
    [elementos removeObjectAtIndex: 0];
}

-(NSObject *) ler{
    if (! [self vazio]){
      return elementos.firstObject;
    }else{
        return nil;
    }
}
-(BOOL) vazio{
    if (elementos.count == 0){
        return true;
    }else{
        return false;
    }
}

@end
