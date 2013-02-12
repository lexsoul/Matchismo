//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Alexander Ramirez on 2/11/13.
//  Copyright (c) 2013 Alexander Ramirez. All rights reserved.
//

#import "CardGameViewController.h"
#import "CardMatchingGame.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (weak, nonatomic) IBOutlet UILabel *cardsLeft;
//@property (strong,nonatomic) PlayingCardDeck *esteJuego;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property  (strong,nonatomic) CardMatchingGame *game;
@end

@implementation CardGameViewController

-(CardMatchingGame *)game
{
    if(!_game)
    {
        _game = [[CardMatchingGame alloc] initWithCardCount:self.cardButtons.count usingDeck:[[PlayingCardDeck alloc] init]];
    }
    return _game;
}

-(void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    [self updateUI];
   /* for (UIButton *cardButton in cardButtons)
    {
        //aqui se manda a llamar a deck;
        PlayingCardDeck   *card = [self esteJuego];
        [cardButton setTitle:card.getCarta forState:UIControlStateSelected];
    }*/
}

-(void)updateUI
{
    for (UIButton *cardButton in self.cardButtons)
    {
        Card *card = [self.game cardAtIndex:[self.cardButtons indexOfObject:cardButton]];
        [cardButton setTitle:card.contenidoCarta forState:UIControlStateSelected];
        [cardButton setTitle:card.contenidoCarta forState:UIControlStateSelected|UIControlStateDisabled];
        cardButton.selected = card.isFaceUp;
        cardButton.enabled = !card.isUnplayable;
        cardButton.alpha = card.isUnplayable ? 0.3 : 1,0;
    }
}
/*
@synthesize esteJuego = _esteJuego;
-(void)setEsteJuego:(PlayingCardDeck *)esteJuego
{
    _esteJuego = esteJuego;
}

-(PlayingCardDeck *)esteJuego
{
    if(!_esteJuego)
    {
        _esteJuego = [[PlayingCardDeck alloc] init];
    }
    return _esteJuego;
}*/

- (void)setFlipCount:(int)flipCount

{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
}


- (IBAction)flipCard:(UIButton *)sender
{
    [self.game flipCardAtIndex:[self.cardButtons indexOfObject:sender]];
    self.flipCount++;
    [self updateUI];
    
    // ESTO FUNCIONA PARA UNO O VARIOS BOTONES
    /*sender.selected = !sender.isSelected;
    self.flipCount++;*/
    /* 
     ESTO FUNCIONA PARA UN SOLO BOTON
    if(sender.selected)
    {
       PlayingCardDeck *allMyDeck = _esteJuego;
       [sender setTitle:allMyDeck.getCarta forState:UIControlStateSelected];
               self.cardsLeft.text = [NSString stringWithFormat:@"Left: %d",allMyDeck.cartas_disponibles];
    }*/

}

- (IBAction)startGame:(UIButton *)sender {
   /* _esteJuego = nil;
    [self esteJuego];*/
    self.game = nil;
    [self updateUI];
}

@end
