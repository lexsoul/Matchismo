//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

@synthesize cartas_disponibles = _cartas_disponibles;
-(NSInteger)cartas_disponibles
{
    return _cartas_disponibles;
}
-(void)setCartas_disponibles:(NSInteger)cartas_disponibles
{
    _cartas_disponibles = cartas_disponibles;
}

-(id)init
{
    self = [super init];
    if(self)
    {
        for (NSString *temp_logo in [PlayingCard logotipoValido])
        {
            int cantidadCartas_actual = [PlayingCard cantidadCartas];
            for (NSUInteger temp_valor_carta =1; temp_valor_carta <=cantidadCartas_actual; temp_valor_carta++)
            {
                PlayingCard *carta = [[PlayingCard alloc] init];
                carta.valorCarta = temp_valor_carta;
                carta.logotipo = temp_logo;
                [self addCard:carta atTop:YES];
            }
        }
    
    }

    return self;
}

-(NSString *)getCarta
{
    PlayingCard *carta = (PlayingCard *)[self drawRandomCard];
    self.cartas_disponibles = [self cartasRestantes];
    return carta.contenidoCarta;
}
@end
