
#import "RouteAlert.h"
#import "IMPI18N.h"

static RouteAlert *_routeAlert = nil;

@interface RouteAlert () {
    BOOL isShowOrNot;
}

@end

@implementation RouteAlert

+ (RouteAlert *)shareInstance {
    @synchronized(self) {
        if (_routeAlert == nil) {
            _routeAlert = [[self alloc] init];
        }
    }
    return _routeAlert;
}

- (void)showAlert:(NSString *)str {
    if (!isShowOrNot) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:str delegate:self cancelButtonTitle:IMPLocalizedString(@"common_sure") otherButtonTitles:nil];
        [alert show];
        isShowOrNot = YES;
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    isShowOrNot = NO;
}

- (void)dealloc {
    if (_routeAlert) {
        _routeAlert = nil;
    }
}

@end
