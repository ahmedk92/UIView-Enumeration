//
//  UIView+Enumeration.m
//  Quran
//
//  Created by Arabia -IT on 1/17/17.
//  Copyright © 2017 Arabia For Information Technology. All rights reserved.
//

#import "UIView+Enumeration.h"

@implementation UIView (Enumeration)

- (void)enum_enumerateHierarchy:(void (^)(UIView *))viewHandler {
    if (viewHandler) {
        NSMutableArray* views = [NSMutableArray arrayWithObject:self];
        while (views.count > 0) {
            UIView* currentView = views.lastObject;
            [views removeLastObject];
            
            for (UIView* subview in currentView.subviews) {
                viewHandler(subview);
                [views addObject:subview];
            }
        }
    }
}

@end
