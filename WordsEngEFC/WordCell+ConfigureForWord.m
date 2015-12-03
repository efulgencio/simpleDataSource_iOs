//
//  WordCell+ConfigureForWord.m
//  WordsEngEFC
//
//  Created by eduardo fulgencio on 3/12/15.
//  Copyright © 2015 eduardo fulgencio. All rights reserved.
//

#import "WordCell+ConfigureForWord.h"
#import "Word.h"

@implementation WordCell (ConfigureForWord)

- (void)configureForWord:(Word *)word
{
    self.txtIngles.text = word.ingles;
    self.txtCastellano.text = word.castellano;
}


@end
