//
//  docTestTests.m
//  docTestTests
//
//  Created by Andrey Golovin on 31.12.13.
//  Copyright (c) 2013 Jelvix. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface docTestTests : XCTestCase

@end

@implementation docTestTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
