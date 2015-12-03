//
//  WordCell.m
//  WordsEngEFC
//
//  Created by eduardo fulgencio on 1/12/15.
//  Copyright © 2015 eduardo fulgencio. All rights reserved.
//

#import "WordCell.h"

@implementation WordCell


+ (UINib *)nib
{
    return [UINib nibWithNibName:@"WordCell" bundle:nil];
}


- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];
    
    if (highlighted) {
        self.txtIngles.shadowColor = [UIColor darkGrayColor];
        self.txtIngles.shadowOffset = CGSizeMake(3, 3);
    } else {
        self.txtIngles.shadowColor = nil;
    }
    
}


@end
