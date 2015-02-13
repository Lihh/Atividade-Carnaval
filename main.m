//
//  main.m
//  Fila
//
//  Created by Fernando Lucheti on 06/02/15.
//  Copyright (c) 2015 Fernando Lucheti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fila.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fila *fila = [[Fila alloc] init];
        NSString *e1 = @"Basile";
        NSString *e2 = @"Ilana";
        NSString *e3 = @"Vinícius";
        NSString *e4 = @"Joaquim";
        [fila enfileirar:e1];
        [fila enfileirar:e2];
        [fila enfileirar:e3];
        [fila enfileirar:e4];
        
        while (![fila vazio]) {
            NSLog(@"Elemento: %@",[fila ler]);
            [fila desenfileirar];
        }
    }
    return 0;
}
