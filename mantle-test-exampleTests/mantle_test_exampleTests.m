//
//  mantle_test_exampleTests.m
//  mantle-test-exampleTests
//
//  Created by Alexander Skorulis on 24/03/2015.
//  Copyright (c) 2015 com.skorulis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TestModel.h"

@interface mantle_test_exampleTests : XCTestCase

@end

@implementation mantle_test_exampleTests

- (void)testExample {
    NSString* json = @"{\"name\":\"test\"}";
    NSData* data = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary* dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    TestModel* model = [MTLJSONAdapter modelOfClass:[TestModel class] fromJSONDictionary:dict error:nil];
    
    NSLog(@"Successfull parsed %@",model);
    XCTAssert(YES, @"Pass");
}

@end
