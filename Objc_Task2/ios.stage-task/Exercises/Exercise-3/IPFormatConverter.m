#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSString *negativeNumber = @"Negative numbers are not valid for input.";
    NSString *numberOutOfRange = @"The numbers in the input array can be in the range from 0 to 255.";
    
    if (numbersArray.count == 0) {
            return @"";
        }
    
    for (NSNumber *number in numbersArray){
        if ([number intValue]<0) {
            return negativeNumber;
            
        }
        if ([number intValue]>255) {
            return numberOutOfRange;
        }
    }
    int tempArray[4];
    for (int i = 0; i<4; i++){
        if (i<numbersArray.count){
            tempArray[i] = [numbersArray[i] intValue];
        } else {
            tempArray[i] = 0;
        }
    }
    NSString *output = [NSString stringWithFormat:@"%d.%d.%d.%d", tempArray[0], tempArray[1],tempArray[2], tempArray[3]];
    
    return output;
}

@end
