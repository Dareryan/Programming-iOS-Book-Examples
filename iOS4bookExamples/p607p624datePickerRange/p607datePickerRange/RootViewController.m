

#import "RootViewController.h"

@implementation RootViewController
@synthesize dp;

- (void)dealloc
{
    [dp release];
    [super dealloc];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    NSDateComponents* dc = [[NSDateComponents alloc] init];
    [dc setYear:1954];
    [dc setMonth:1];
    [dc setDay:1];
    NSCalendar* c = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate* d = [c dateFromComponents:dc];
    dp.minimumDate = d;
    dp.date = d;
    [dc setYear:1955];
    d = [c dateFromComponents:dc];
    dp.maximumDate = d;
    [c release]; [dc release];

}

@end
