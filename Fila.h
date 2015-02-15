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
    NSMutableArray *sequencia;
    NSNumber *inicio;
    NSObject *numero;
    int highScore;
    int numRodadas;
    int count;
    NSString *user;
    
}

@property NSMutableArray *sequencia;
@property NSNumber *inicio;
@property NSObject *numero;
@property int highScore;
@property int numRodadas;
@property int count;
@property NSString *user;


-(void) iniciaGenius; //inicia fila, pede nome do jogador
-(void) iniciaJogo; //inicia um novo jogo
-(void) geraNumero; //numeros aleatoios para fila cada vez que user acerta a sequencia
-(void) proxRodada;
-(void) atualizaHighScore:(int)numRodadas; //checa se o high score mudou. high score = qtde de rodadas
-(void) mostraCor;

-(void) enfileirar:(NSObject *)numero;
-(void) desenfileirar;
-(NSObject *) ler;
-(BOOL) vazio;


@end
