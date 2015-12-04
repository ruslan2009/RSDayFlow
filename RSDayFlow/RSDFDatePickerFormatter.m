//
//  RSDFDatePickerFormatter.m
//  RSDayFlow
//
//  Created by Ruslan on 04.12.15.
//
//

#import "RSDFDatePickerFormatter.h"
#import "NSCalendar+RSDFAdditions.h"

@implementation RSDFDatePickerFormatter

- (NSString *)formatDateForMonthHeader:(RSDFDatePickerDate)date withCalendar:(NSCalendar *)calendar
{
    NSString *dateFormatterName = [NSString stringWithFormat:@"calendarMonthHeader_%@_%@", [calendar calendarIdentifier], [[calendar locale] localeIdentifier]];
    NSDateFormatter *dateFormatter = [calendar df_dateFormatterNamed:dateFormatterName withConstructor:^{
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setCalendar:calendar];
        [dateFormatter setLocale:[calendar locale]];
        return dateFormatter;
    }];
    
    NSString *monthString = [dateFormatter shortStandaloneMonthSymbols][date.month - 1];
    return [[NSString stringWithFormat:@"%@ %tu", monthString, date.year] uppercaseString];
}

@end
