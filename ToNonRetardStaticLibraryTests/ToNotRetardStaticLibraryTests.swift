//
//  ToNonRetardStaticLibraryTests.swift
//  ToNonRetardStaticLibraryTests
//
//  Created by Sergei Semko on 5/25/24.
//

import XCTest
@testable import ToNonRetardStaticLibrary

final class ToNotRetardStaticLibraryTests: XCTestCase {
    
    let defaultAccuracy = 0.001
    
    func testLengthUsage() {
        let result = Converter.convert(value: 1, of: Length.self, from: .mile, to: .meter)
        let expectation = 1609.344
    
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMeasurementTypeLength() {
        let lengthType = MeasurementType.length.type
        XCTAssertNotNil(lengthType)
        XCTAssertTrue(lengthType is Length.Type)
        XCTAssertFalse(lengthType is Mass.Type)
    }
    
    func testMeasurementTypeMass() {
        let massType = MeasurementType.mass.type
        XCTAssertNotNil(massType)
        XCTAssertTrue(massType is Mass.Type)
        XCTAssertFalse(massType is Length.Type)
    }
}
