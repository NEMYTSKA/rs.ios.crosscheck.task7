//
//  MyAuthButton.m
//  Demo1
//
//  Created by ilia on 12/07/2021.
//  Copyright © 2021 Victor Semenchuk. All rights reserved.
//

#import "MyAuthButton.h"

@implementation MyAuthButton

-(void)awakeFromNib {
    [super awakeFromNib];
    [self setImage:[UIImage imageNamed:@"personfill"] forState:UIControlStateHighlighted];
    [self.layer setBorderWidth:2.0];
    [self.layer setBorderColor:[UIColor colorNamed:@"Little Boy Blue"].CGColor];
    [self.layer setCornerRadius:10];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
    //[self setFrame:CGRectMake(3, 3, 42, 60)];
    [self setTitleColor:[[UIColor colorNamed:@"Little Boy Blue"] colorWithAlphaComponent:0.5]  forState:UIControlStateHighlighted];
    
}
-(void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.backgroundColor = [[UIColor colorNamed:@"Little Boy Blue"] colorWithAlphaComponent:0.2];
        
    } else {
        self.backgroundColor = UIColor.whiteColor;
    }
}

@end
