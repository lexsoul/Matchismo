//
//  PlayingCard.m
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contenidoCarta
{
 
    NSArray *numCartas = [PlayingCard numCartas];
    return [numCartas[self.valorCarta] stringByAppendingString:self.logotipo];
}
@synthesize logotipo = _logotipo;

+ (NSArray *) logotipoValido
{
    return @[@"♣",@"♠",@"♦",@"♥"];
}

-(void)setLogotipo:(NSString *)logotipo
{
    if([[PlayingCard logotipoValido] containsObject:logotipo])
    {
        _logotipo = logotipo;
    }
}

- (NSString *)logotipo
{
    return _logotipo ? _logotipo : @"?";
}

+ (NSArray *)	numCartas
{
return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    
}

+ (NSInteger)cantidadCartas
{
    return [self numCartas].count-1;
}
-(void)setValorCarta:(NSUInteger)valorCartaRecibida
{
    if(valorCartaRecibida <=[PlayingCard cantidadCartas])
    {
        _valorCarta  =valorCartaRecibida;
    }

}
@end
