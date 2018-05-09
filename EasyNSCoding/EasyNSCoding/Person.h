//
//  Person.h
//  EasyNSCoding
//
//  Created by 刘小壮 on 2018/5/9.
//  Copyright © 2018年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCoding, NSCopying>
@property (nonatomic, copy  ) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL gender;
@end
