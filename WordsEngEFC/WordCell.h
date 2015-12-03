//
//  WordCell.h
//  WordsEngEFC
//
//  Created by eduardo fulgencio on 1/12/15.
//  Copyright © 2015 eduardo fulgencio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WordCell : UITableViewCell

+ (UINib *)nib;

@property (weak, nonatomic) IBOutlet UILabel *txtIngles;
@property (weak, nonatomic) IBOutlet UILabel *txtCastellano;


@end
