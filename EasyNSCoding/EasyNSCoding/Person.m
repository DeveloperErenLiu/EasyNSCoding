//
//  Person.m
//  EasyNSCoding
//
//  Created by 刘小壮 on 2018/5/9.
//  Copyright © 2018年 刘小壮. All rights reserved.
//

#import "Person.h"
#import "NSObject+Coding.h"

@implementation Person

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        [self lxz_decodeWithCoder:aDecoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self lxz_encodeWithCoder:aCoder];
}

- (id)copyWithZone:(NSZone *)zone {
    return [self lxz_copyWithZone:zone];
}

@end
