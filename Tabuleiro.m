//
//  Tabuleiro.m
//  Genius
//
//  Created by Gabriel Alberto de Jesus Preto on 16/02/15.
//  Copyright (c) 2015 Gabriel Alberto de Jesus Preto. All rights reserved.
//

#import "Tabuleiro.h"

@implementation Tabuleiro

-(instancetype) initGenius:(Usuario*)u{
    self = [super init];
    sequencia = [Fila init];
    numRodadas = 0;
    jogador = u;
    return self;
}

//inicia um novo jogo
//-(void) iniciaJogo{
//  count = 0;
//}

//numeros aleatoios para fila cada vez que user acerta a sequencia
-(void) geraNumero
{
    NSInteger numAleat = arc4random_uniform(3);
    numAleat = (numAleat * 100)%3;
    [sequencia enfileirar: numAleat];
}

//checa se o high score mudou. high score = qtde de rodadas
//-(void) atualizaHighScore:(int)numRodadas
//{
//    if (numRodadas > highScore){
//        highScore = numRodadas;
//    }
//}

-(void) proxRodada
{
    numRodadas ++;
    numero = [sequencia geraNumero];
    [sequencia enfileira:(NSObject)numero];
    [mostraCor];
    [sequencia enfileira:(NSObject)numero];
    //checa se usuario acerta
    //se errar, reseta tudo, verifica highScore
    
}

-(void) mostraCor
{
    numero = [sequencia desenfileirar];
    NSString *cor;
    switch (numero) {
        case 0:
        {
            cor = @"vermelho";
            NSLog(@"vermelho");
            break;
        }
        case 1:
        {
            cor = @"azul";
            NSLog(@"azul");
            break;
        }
        case 2:
        {
            cor = @"verde";
            NSLog(@"verde");
            break;
        }
        case 3:
        {
            cor = @"amarelo";
            NSLog(@"amarelo");
            break;
        }
            
        default:
            break;
    }
    [sequencia enfileirar:(NSObject)numero];
    
}

@end
