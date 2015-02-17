//
//  Tabuleiro.h
//  Genius
//
//  Created by Gabriel Alberto de Jesus Preto on 16/02/15.
//  Copyright (c) 2015 Gabriel Alberto de Jesus Preto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fila.h"
#import "Usuario.h"

@interface Tabuleiro : NSObject
{
    Fila *sequencia;
    int numRodadas;
    Usuario *jogador;
    NSObject *numero;
}

@property NSMutableArray *sequencia;
@property int numRodadas;

-(void) iniciaGenius; //inicia fila, pede nome do jogador
-(void) iniciaJogo; //inicia um novo jogo
-(void) geraNumero; //numeros aleatoios para fila cada vez que user acerta a sequencia
-(void) proxRodada;
-(void) atualizaHighScore:(int)numRodadas; //checa se o high score mudou. high score = qtde de rodadas
-(void) mostraCor;
-(void) verificaJogada;

@end
