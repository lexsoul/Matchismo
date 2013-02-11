//
//  PlayingCardDeck.h
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import "Deck.h"

@interface PlayingCardDeck : Deck

@property NSInteger cartas_disponibles;
- (NSString *)getCarta;

@end
