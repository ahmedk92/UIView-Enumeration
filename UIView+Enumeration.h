#import <UIKit/UIKit.h>

@interface UIView (Enumeration)

- (void)enum_enumerateHierarchy:(void (^)(UIView* view))viewHandler;

@end
