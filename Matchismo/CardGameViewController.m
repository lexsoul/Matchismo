//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (weak, nonatomic) IBOutlet UILabel *cardsLeft;
@property (strong,nonatomic) PlayingCardDeck *esteJuego;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

@synthesize esteJuego = _esteJuego;
-(void)setEsteJuego:(PlayingCardDeck *)esteJuego
{
    _esteJuego = esteJuego;
}

-(PlayingCardDeck *)esteJuego
{
    return _esteJuego;
}

- (void)setFlipCount:(int)flipCount

{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
 /*   PlayingCardDeck *allMyDeck = [[PlayingCardDeck alloc]init];
    PlayingCard *unaCarta = [[PlayingCard alloc] init];
    self.flipsLabel.text = unaCarta.contenidoCarta;*/
    /*
    PlayingCardDeck *unaCarta = [[PlayingCardDeck alloc] init];
    unaCarta.drawRandomCard*/
}


- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    
    if(sender.selected)
    {
        PlayingCardDeck *allMyDeck = _esteJuego;
        /*self.flipsLabel.text =  allMyDeck.getCarta;*/
        [sender setTitle:allMyDeck.getCarta forState:UIControlStateSelected];
               self.cardsLeft.text = [NSString stringWithFormat:@"Left: %d",allMyDeck.cartas_disponibles];
    }
    self.flipCount++;
}

- (IBAction)startGame:(UIButton *)sender {
    
    PlayingCardDeck *allMyDeck = [[PlayingCardDeck alloc]init];
    self.esteJuego = allMyDeck;
    _flipCount =0;
}

@end
