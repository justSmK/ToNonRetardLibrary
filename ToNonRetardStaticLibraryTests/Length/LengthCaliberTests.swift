//
//  LengthCaliberTests.swift
//  ToNonRetardStaticLibraryTests
//
//  Created by Sergei Semko on 5/25/24.
//

import XCTest
@testable import ToNonRetardStaticLibrary

final class LengthCaliberTests: XCTestCase {
    
    let defaultAccuracy = 0.001

    func testCaliberToMeter() {
        let result = Length.convert(value: 3231, from: .caliber, to: .meter)
        let expectation: Double = 0.821
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }

    func testCaliberToCentimeter() {
        let result = Length.convert(value: 4, from: .caliber, to: .centimeter)
        let expectation: Double = 0.102
        
        print(result)
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
}
