//
//  MyOnOffBytton.m
//  Demo1
//
//  Created by ilia on 12/07/2021.
//  Copyright © 2021 Victor Semenchuk. All rights reserved.
//

#import "MyOnOffBytton.h"

@implementation MyOnOffBytton

-(void)awakeFromNib {
    [super awakeFromNib];
    [self.layer setBorderWidth:1.5];
    [self.layer setBorderColor: [[UIColor colorNamed:@"Little Boy Blue"] colorWithAlphaComponent:1].CGColor];
    [self.layer setCornerRadius:5];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
    [self setImage:[UIImage imageNamed:@"personfill"] forState:UIControlStateHighlighted];
    
}

-(void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.2];
        
    } else {
        self.backgroundColor = UIColor.whiteColor;
    }
}

@end
