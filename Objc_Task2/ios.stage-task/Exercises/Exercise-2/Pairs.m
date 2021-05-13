#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
        for (NSNumber *arrayElement in array){
            int tempValue = [arrayElement intValue] - [number intValue];
            for (NSNumber *arrayElement in array){
                if (tempValue==[arrayElement intValue]){
                    count+=1;
                }
            }
        }
        return count;
}

@end
