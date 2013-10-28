//
//  UIDevice+SupportedDevices.m
//
//  Created by Arthur Sabintsev on 10/25/13.
//  Copyright (c) 2013 Arthur Ariel Sabintsev. All rights reserved.
//

#import "UIDevice+SupportedDevices.h"
#import <sys/utsname.h>

@implementation UIDevice (SupportedDevices)

+ (NSString *)machineName
{
    struct utsname systemInfo;
    uname(&systemInfo);
    
   return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

+ (NSString *)supportedDeviceName
{
    
    NSString *deviceName = nil;
    NSString *machineName = [self machineName];
    
    // Model information retrieved from http://theiphonewiki.com/wiki/Models
    if ([machineName isEqualToString:@"iPad1,1"]) deviceName = @"";         // iPad 1G Wi-Fi/GSM
    else if ([machineName isEqualToString:@"iPad2,1"]) deviceName = @"";    // iPad 2 Wi-Fi
    else if ([machineName isEqualToString:@"iPad2,2"]) deviceName = @"";    // iPad 2 GSM
    else if ([machineName isEqualToString:@"iPad2,3"]) deviceName = @"";    // iPad 2 CDMA
    else if ([machineName isEqualToString:@"iPad2,4"]) deviceName = @"";    // iPad 2 Wi-Fi Rev A
    else if ([machineName isEqualToString:@"iPad3,1"]) deviceName = @"";    // iPad 3 Wi-Fi
    else if ([machineName isEqualToString:@"iPad3,2"]) deviceName = @"";    // iPad 3 GSM+CDMA
    else if ([machineName isEqualToString:@"iPad3,3"]) deviceName = @"";    // iPad 3 GSM
    else if ([machineName isEqualToString:@"iPad3,4"]) deviceName = @"";    // iPad 4 Wi-Fi
    else if ([machineName isEqualToString:@"iPad3,5"]) deviceName = @"";    // iPad 4 GSM
    else if ([machineName isEqualToString:@"iPad3,6"]) deviceName = @"";    // iPad 4 GSM+CDMA
    else if ([machineName isEqualToString:@"iPad4,1"]) deviceName = @"";    // iPad Air Wi-Fi
    else if ([machineName isEqualToString:@"iPad4,2"]) deviceName = @"";    // iPad Air Cellular
    else if ([machineName isEqualToString:@"iPad2,5"]) deviceName = @"";    // iPad mini 1G Wi-Fi
    else if ([machineName isEqualToString:@"iPad2,6"]) deviceName = @"";    // iPad mini 1G GSM
    else if ([machineName isEqualToString:@"iPad2,7"]) deviceName = @"";    // iPad mini 1G GSM+CDMA
    else if ([machineName isEqualToString:@"iPad4,4"]) deviceName = @"";    // iPad mini 2G Wi-Fi
    else if ([machineName isEqualToString:@"iPad4,5"]) deviceName = @"";    // iPad mini 2G Cellular
    else if ([machineName isEqualToString:@"iPod1,1"]) deviceName = @"";    // iPod touch 1G
    else if ([machineName isEqualToString:@"iPod2,1"]) deviceName = @"";    // iPod touch 2G
    else if ([machineName isEqualToString:@"iPod3,1"]) deviceName = @"";    // iPod touch 3G
    else if ([machineName isEqualToString:@"iPod4,1"]) deviceName = @"";    // iPod touch 4G
    else if ([machineName isEqualToString:@"iPod5,1"]) deviceName = @"";    // iPod touch 5G
    else if ([machineName isEqualToString:@"iPhone1,1"]) deviceName = @"";  // iPhone 2G GSM
    else if ([machineName isEqualToString:@"iPhone1,2"]) deviceName = @"";  // iPhone 3G GSM
    else if ([machineName isEqualToString:@"iPhone2,1"]) deviceName = @"iPhone-3GS";  // iPhone 3GS GSM
    else if ([machineName isEqualToString:@"iPhone3,1"]) deviceName = @"";  // iPhone 4 GSM
    else if ([machineName isEqualToString:@"iPhone3,2"]) deviceName = @"";  // iPhone 4 GSM Rev A
    else if ([machineName isEqualToString:@"iPhone3,3"]) deviceName = @"";  // iPhone 4 CDMA
    else if ([machineName isEqualToString:@"iPhone4,1"]) deviceName = @"iPhone4s";  // iPhone 4S
    else if ([machineName isEqualToString:@"iPhone5,1"]) deviceName = @"iPhone5";  // iPhone 5 GSM
    else if ([machineName isEqualToString:@"iPhone5,2"]) deviceName = @"iPhone5";  // iPhone 5 GSM+CDMA
    else if ([machineName isEqualToString:@"iPhone5,3"]) deviceName = @"";  // iPhone 5c GSM
    else if ([machineName isEqualToString:@"iPhone5,4"]) deviceName = @"";  // iPhone 5c Global
    else if ([machineName isEqualToString:@"iPhone6,1"]) deviceName = @"";  // iPhone 5s GSM
    else if ([machineName isEqualToString:@"iPhone6,2"]) deviceName = @"";  // iPhone 5s Global
    else deviceName = @"Unknown";
    
    return deviceName;
}

@end
