//
//  PlayingCard.h
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic)NSString *logotipo;
@property (nonatomic) NSUInteger valorCarta;
@property (strong,nonatomic) NSString *contenidoCarta;
+ (NSArray *) logotipoValido;
+ (NSInteger)cantidadCartas;
@end
