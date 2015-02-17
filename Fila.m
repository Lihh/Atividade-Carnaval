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
//
////inicia fila, pede nome do jogador
//-(void) iniciaGenius{
//    NSLog(@"Digite seu nome: ");
//    //user digita nome
//    inicio = 5;
//    [sequencia enfileirar:inicio];
//    
//}
//
////inicia um novo jogo
//-(void) iniciaJogo{
//    numRodadas = 1;
//    count ++;  //conta qntas vezes o jogo foi utilizado
//
//    
//}
//
////numeros aleatoios para fila cada vez que user acerta a sequencia
//-(void) geraNumero
//{
//    NSInteger numAleat = arc4random_uniform(3);
//    numAleat = (numAleat * 100)%4;
//    int num = (NSInteger)numAleat;
//    [sequencia enfileirar:numAleat];
//}
//
////checa se o high score mudou. high score = qtde de rodadas
//-(void) atualizaHighScore:(int)numRodadas
//{
//    if (numRodadas > highScore){
//        highScore = numRodadas;
//    }
//}
//
//-(void) proxRodada
//{
//    numRodadas ++;
//    numero = [sequencia geraNumero];
//    [sequencia enfileira:(NSObject)numero];
//    [mostraCor];
//    [sequencia enfileira:(NSObject)numero];
//    //checa se usuario acerta
//    //se errar, reseta tudo, verifica highScore
//    
//}
//
//-(void) mostraCor
//{
//    numero = [sequencia desenfileirar];
//    NSString *cor;
//    switch (numero) {
//        case 0:
//        {
//            cor = @"vermelho";
//            NSLog(@"vermelho");
//            break;
//        }
//        case 1:
//        {
//            cor = @"azul";
//            NSLog(@"azul");
//            break;
//        }
//        case 2:
//        {
//            cor = @"verde";
//            NSLog(@"verde");
//            break;
//        }
//        case 3:
//        {
//            cor = @"amarelo";
//            NSLog(@"amarelo");
//            break;
//        }
//            
//        default:
//            break;
//    }
//    [sequencia enfileirar:(NSObject)numero];
//    
//}

-(void) enfileirar:(NSObject*)numero {
    [elementos addObject: numero];
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

@synthesize elementos;


@end
