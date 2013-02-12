//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Alexander Ramirez on 2/12/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designated initializer
- (id) initWithCardCount: (NSUInteger)count usingDeck:(Deck *)deck;

//
- (void)flipCardAtIndex: (NSUInteger)index;

- (Card * )cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly)int score;


@end
