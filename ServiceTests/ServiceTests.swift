//
//  ServiceTests.swift
//  ServiceTests
//
//  Created by Tim Wolff on 06/11/2020.
//  Copyright © 2020 Tim Wolff. All rights reserved.
//

import XCTest
@testable import Service

class ServiceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testXPCService() {
        let textExpectation = expectation(description: "Recieve a string in upper case")
        
        let service = Service()
        service.upperCase(aString: "hello world") { (message) in
            XCTAssertEqual(message, "HELLO WORLD")
            textExpectation.fulfill()
        }
        
        wait(for: [textExpectation], timeout: 3.0)
    }

}
