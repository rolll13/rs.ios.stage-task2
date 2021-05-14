#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    int number = 0;
    for (int i = 0; i<8; i++) {
        if (n%2) {
            number+=pow(2, 7-i);
        }
        n/=2;
    }
    return number;
}
