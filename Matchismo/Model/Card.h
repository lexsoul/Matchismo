//
//  Card.h
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter = isFaceUp) BOOL faceUp;
@property  (nonatomic) BOOL unplayable;

-(int)match:(Card *)card;

@end
