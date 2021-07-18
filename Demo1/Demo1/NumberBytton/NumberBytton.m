//
//  NumberBytton.m
//  Demo1
//
//  Created by ilia on 07/07/2021.
//  Copyright © 2021 Victor Semenchuk. All rights reserved.
//

#import "NumberBytton.h"
#import "UIColor+Color.h"


@implementation NumberBytton

- (void)awakeFromNib {
    [super awakeFromNib];
    [self.layer setBorderWidth:1.5];
    [self.layer setCornerRadius:self.frame.size.height / 2];
    [self.layer setBorderColor:[UIColor colorNamed:@"Little Boy Blue"].CGColor];
    [self setTitleColor:[UIColor rsLittleBoyBlue] forState:UIControlStateNormal];
}


@end
