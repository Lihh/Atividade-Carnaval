//
//  Ranking.h
//  Genius
//
//  Created by Gabriel Alberto de Jesus Preto on 16/02/15.
//  Copyright (c) 2015 Gabriel Alberto de Jesus Preto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Usuario.h"

@interface Ranking : NSObject
{
    NSMutableArray *listMelhoresPontuacoes;
    int tamanhoLista;
}

-(void) ordenaRanking;
-(void) cadastraNovoUsuario:(Usuario*)user;
-(NSMutableArray*) retornaRanking;

@property NSMutableArray *listaMelhoresPontuacoes;
@property int tamanhoLista;


@end
