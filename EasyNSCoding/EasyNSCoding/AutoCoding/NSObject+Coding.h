//
//  NSObject+Coding.h
//  Utility
//
//  Created by 刘小壮 on 2015/4/9.
//
//

#import <Foundation/Foundation.h>

/**
 * 快速实现NSCoding协议中，编码和解码的方法
 */
@interface NSObject (Coding)

/**
 * 通过Runtime解码
 *
 * @param decoder NSCoder对象
 */
- (void)lxz_decodeWithCoder:(NSCoder *)decoder;

/**
 * 通过Runtime编码
 *
 * @param coder NSCoder对象
 */
- (void)lxz_encodeWithCoder:(NSCoder *)coder;

/**
 * 通过Runtime实现自动copy
 *
 * @param zone NSZone对象
 * @return 新对象
 */
- (id)lxz_copyWithZone:(NSZone *)zone;

@end
