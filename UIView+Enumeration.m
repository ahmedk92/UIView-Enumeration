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
