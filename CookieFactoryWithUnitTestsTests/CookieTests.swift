//
//  CookieTests.swift
//  CookieFactoryWithUnitTestsTests
//
//  Created by Hasan Qasim on 10/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import XCTest

class CookieTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_GingerbreadCookietype_DoesNotReturnNil() {
        let cookie = Cookie(.gingerbread)
        XCTAssertNotNil(cookie)
    }
    
    func testInit_ShortbreadCookietype_DoesNotReturnNil() {
        let cookie = Cookie(.shortbread)
        XCTAssertNotNil(cookie)
    }
    
    func testInit_ChocolateChipCookietype_DoesNotReturnNil() {
        let cookie = Cookie(.chocolateChip)
        XCTAssertNotNil(cookie)
    }
    
    func testInit_GingerbreadCookietype_SetsCookietypeIvarCorrectly() {
        let cookie = Cookie(.gingerbread)
        XCTAssertEqual(cookie.type, .gingerbread)
    }
    
    func testInit_ShortbreadCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.shortbread)
        XCTAssertEqual(cookie.type, .shortbread)
    }
    
    func testInit_ChocolateChipCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.chocolateChip)
        XCTAssertEqual(cookie.type, .chocolateChip)
    }

    

}
