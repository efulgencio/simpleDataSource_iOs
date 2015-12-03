//
//  WordCell+ConfigureForWord.h
//  WordsEngEFC
//
//  Created by eduardo fulgencio on 3/12/15.
//  Copyright © 2015 eduardo fulgencio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Word.h"
#import "WordCell.h"

@class Word;

@interface WordCell (ConfigureForWord)

- (void)configureForWord:(Word *)word;

@end
