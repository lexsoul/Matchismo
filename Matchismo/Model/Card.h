//
//  Card.h
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, weak) NSString *description;
@property (nonatomic, strong) NSString *contenidoCarta;
@property (nonatomic, strong) NSString *typeOfMatch;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *) cards;

@end
