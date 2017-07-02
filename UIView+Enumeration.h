//
//  UIView+Enumeration.h
//  Quran
//
//  Created by Arabia -IT on 1/17/17.
//  Copyright © 2017 Arabia For Information Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Enumeration)

- (void)enum_enumerateHierarchy:(void (^)(UIView* view))viewHandler;

@end
