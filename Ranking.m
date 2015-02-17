//
//  Ranking.m
//  Genius
//
//  Created by Gabriel Alberto de Jesus Preto on 16/02/15.
//  Copyright (c) 2015 Gabriel Alberto de Jesus Preto. All rights reserved.
//

#import "Ranking.h"

@implementation Ranking

@synthesize listaMelhoresPontuacoes, tamanhoLista;


-(void) ordenaRanking{
    
    for(int i = tamanhoLista-1 ; i >= 1; i--) {
        
        for(int j=0; j < i ; j++) {
            
            if (listaMelhoresPontuacoes[j].score > listaMelhoresPontuacoes[j+1].score) {
                
                NSObject *aux = listaMelhoresPontuacoes[j];
                
                listaMelhoresPontuacoes[j] = listaMelhoresPontuacoes[j+1];
                
                listaMelhoresPontuacoes[j+1] = aux;
                
            }
        }
    }
}
-(void) cadastraNovoUsuario:(Usuario*)user{
    
    [listaMelhoresPontuacoes addObject:user];
    
    tamanhoLista++;
    
}
-(NSMutableArray*) retornaRanking{
    
    return listaMelhoresPontuacoes;

}

@end
