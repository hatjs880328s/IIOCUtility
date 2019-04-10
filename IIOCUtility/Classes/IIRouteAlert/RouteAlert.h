
#import <UIKit/UIKit.h>

@interface RouteAlert : NSObject<UIAlertViewDelegate>

+ (RouteAlert *)shareInstance;
- (void)showAlert:(NSString *)str;

@end
