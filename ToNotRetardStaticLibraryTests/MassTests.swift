//
//  MassTests.swift
//  ToNotRetardStaticLibraryTests
//
//  Created by Sergei Semko on 5/25/24.
//

import XCTest
@testable import ToNotRetardStaticLibrary

final class MassTests: XCTestCase {

    let defaultAccuracy = 0.001

    func testExample() throws {
        let result = Mass.convert(value: 1, from: .slug, to: .kilogram)
        let expectation: Double = 0.373
        
        print(result)
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
}
