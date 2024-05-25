//
//  MassTests.swift
//  ToNonRetardStaticLibraryTests
//
//  Created by Sergei Semko on 5/25/24.
//

import XCTest
@testable import ToNonRetardStaticLibrary

final class MassTests: XCTestCase {

    let defaultAccuracy = 0.001

    func testExample() throws {
        let result = Mass.convert(value: 4, from: .poundLBM, to: .kilogram)
        let expectation: Double = 1.814
        
        print(result)
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
}
