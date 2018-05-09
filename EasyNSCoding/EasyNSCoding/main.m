//
//  main.m
//  EasyNSCoding
//
//  Created by 刘小壮 on 2018/5/9.
//  Copyright © 2018年 刘小壮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        person.name = @"lxz";
        person.age = 18;
        person.gender = YES;
        
        Person *newPerson = [person copy];
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:person];
        Person *unarchivedPerson = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        
        NSLog(@"person : %@ name : %@, newPerson : %@ name : %@, unarchivedPerson : %@ name : %@", person, person.name, newPerson, newPerson.name, unarchivedPerson, unarchivedPerson.name);
    }
    return 0;
}
