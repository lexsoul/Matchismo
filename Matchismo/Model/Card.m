//
//  Card.m
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(Card *)card
{
    int score = 0;
    
        if([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    return score;
}
/*-(int)match:(NSArray *) otherCards
{
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }

}*/
@end
