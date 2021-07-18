//
//  MyTextField.m
//  Demo1
//
//  Created by ilia on 12/07/2021.
//  Copyright © 2021 Victor Semenchuk. All rights reserved.
//

#import "MyTextField.h"

@implementation MyTextField

-(void)awakeFromNib {
    [super awakeFromNib];
    [self.layer setBorderWidth:1.5];
    [self.layer setCornerRadius:5];
    [self setState:@"ready"];
//    [self setTextContentType:UITextContentTypeOneTimeCode];

}

- (void)setState:(NSString *)state {
    if ([state isEqualToString:@"ready"]) {
        [self.layer setBorderColor:[UIColor colorNamed:@"Black Coral"].CGColor];
        [self setEnabled:YES];
        [self setAlpha:1];
    } else if ([state isEqualToString:@"success"]) {
        [self.layer setBorderColor:[UIColor colorNamed:@"Turquoise Green"].CGColor];
    } else if ([state isEqualToString:@"error"]) {
        [self.layer setBorderColor:[UIColor colorNamed:@"Venetian Red"].CGColor];
    } else {
        NSLog(@"Unknown state");
    }
}

@end
