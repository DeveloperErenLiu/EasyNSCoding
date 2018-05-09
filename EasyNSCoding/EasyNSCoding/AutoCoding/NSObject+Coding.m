//
//  NSObject+Coding.m
//  Utility
//
//  Created by 刘小壮 on 2015/4/9.
//
//

#import "NSObject+Coding.h"
#import <objc/runtime.h>

@implementation NSObject (Coding)

- (void)lxz_decodeWithCoder:(NSCoder *)decoder {
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    if (ivars) {
        for (int i = 0; i < count; i++) {
            Ivar ivar = ivars[i];
            const char *ivarName = ivar_getName(ivar);
            NSString *keyName = [[NSString alloc] initWithUTF8String:ivarName];
            id value = [decoder decodeObjectForKey:keyName];
            [self setValue:value forKeyPath:keyName];
        }
    }
    free(ivars);
}

- (void)lxz_encodeWithCoder:(NSCoder *)coder {
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    if (ivars) {
        for (int i = 0; i < count; i++) {
            Ivar ivar = ivars[i];
            const char *ivarName = ivar_getName(ivar);
            NSString *keyName = [[NSString alloc] initWithUTF8String:ivarName];
            id value = [self valueForKeyPath:keyName];
            [coder encodeObject:value forKey:keyName];
        }
    }
    free(ivars);
}

- (id)lxz_copyWithZone:(NSZone *)zone {
    NSObject *obj = [[[self class] allocWithZone:zone] init];
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    if (ivars) {
        for (int i = 0; i < count; i++) {
            Ivar ivar = ivars[i];
            const char *ivarName = ivar_getName(ivar);
            NSString *keyName = [[NSString alloc] initWithUTF8String:ivarName];
            id value = [self valueForKeyPath:keyName];
            
            if ([value respondsToSelector:@selector(copyWithZone:)]) {
                [obj setValue:[value copy] forKey:keyName];
            } else {
                [obj setValue:value forKey:keyName];
            }
        }
    }
    free(ivars);
    return obj;
}

@end





