//
//  RSDFDatePickerFormatter.h
//  RSDayFlow
//
//  Created by Ruslan on 04.12.15.
//
//

#import <Foundation/Foundation.h>

#import "RSDFDatePickerDate.h"

@interface RSDFDatePickerFormatter : NSObject

- (NSString *)formatDateForMonthHeader:(RSDFDatePickerDate)date withCalendar:(NSCalendar *)calendar;

@end
