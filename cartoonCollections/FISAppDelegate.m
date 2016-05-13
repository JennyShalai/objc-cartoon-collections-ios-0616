//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSUInteger numberOfDwarfs = [dwarfs count];
    NSString *result = @"";
    if ( numberOfDwarfs > 0) {
        result = [result stringByAppendingFormat:@"1. %@", [dwarfs objectAtIndex:0]];
        for (NSUInteger i = 1; i < numberOfDwarfs; i++) {
            result = [result stringByAppendingFormat:@" | %li. %@", i + 1, dwarfs[i]];
        }
    } else {
        return nil;
    }
    return result;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *powersUppercased = [[NSMutableArray alloc] init];;
    NSUInteger numberOfPowers = [powers count];
    for (NSUInteger i = 0; i < numberOfPowers; i++) {
        NSString *powerUppercased = [powers[i] uppercaseString];
        powerUppercased = [powerUppercased stringByAppendingString:@"!"];
        [powersUppercased addObject:powerUppercased];
    }
    return powersUppercased;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSString *result = @"Let our powers combine:\n";
    NSArray *powersUppercased = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *stringPowersUppercased = [[powersUppercased valueForKey:@"description"] componentsJoinedByString:@"\n"];
    result = [result stringByAppendingString:stringPowersUppercased];
    result = [result stringByAppendingString:@"\nGo Planet!"];
    return result;
}


- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *cheese = @"";
    NSUInteger numberOfCheesesInStock = [cheesesInStock count];
    NSUInteger numberOfPremiumCheeseNames = [premiumCheeseNames count];
    NSString *currentCheesesInStock = @"";

    for (int i = 0; i < numberOfPremiumCheeseNames; i++) {
        NSString *currentPremiumCheese = premiumCheeseNames[i];
        for (int j = 0; j < numberOfCheesesInStock; j++) {
            
            currentCheesesInStock = cheesesInStock[j];
            NSLog(@"\n\n\n\n\npre:%@", currentPremiumCheese);
            NSLog(@"curr:%@", currentCheesesInStock);
        }
            if ([currentPremiumCheese isEqualToString:currentCheesesInStock]) {
                NSLog(@"bool: %d\n\n\n\n\n\n",[currentPremiumCheese isEqualToString:currentCheesesInStock]);
                cheese = [cheese stringByAppendingString:currentPremiumCheese];
                return cheese;
            } else {
                return @"No premium cheeses in stock.";
            }
        
    }
    
    return cheese;
}


- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    return nil;
}



@end
