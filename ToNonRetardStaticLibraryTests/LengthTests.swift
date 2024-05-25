//
//  LengthTests.swift
//  ToNonRetardStaticLibraryTests
//
//  Created by Sergei Semko on 5/25/24.
//

import XCTest
@testable import ToNonRetardStaticLibrary

final class LengthTests: XCTestCase {
    
    let defaultAccuracy = 0.001
    
    func testMileToMeter() {
        let result = Length.convert(value: 33, from: .mile, to: .meter)
        let expectation: Double = 53108.352
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToCentimeter() {
        let result = Length.convert(value: 127, from: .mile, to: .centimeter)
        let expectation: Double = 20438668.8
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToKilometer() {
        let result = Length.convert(value: 431, from: .mile, to: .kilometer)
        let expectation: Double = 693.627
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToBanana() {
        let result = Length.convert(value: 69, from: .mile, to: .banana)
        let expectation: Double = 623846.831
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToFermi() {
        let result = Length.convert(value: 9, from: .mile, to: .fermi)
        let expectation: Double = 14484096000000000000.0
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToLightYear() {
        var result = Length.convert(value: 9999999999999, from: .mile, to: .lightYear)
        var expectation: Double = 1.701
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
        
        
        result = Length.convert(value: 4323, from: .mile, to: .lightYear)
        expectation = 7.35376e-10
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToMicrometer() {
        let result = Length.convert(value: 32, from: .mile, to: .micrometer)
        let expectation: Double = 51499008000
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToMillimeter() {
        let result = Length.convert(value: 42, from: .mile, to: .millimeter)
        let expectation: Double = 67592448
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToNanometer() {
        let result = Length.convert(value: 912, from: .mile, to: .nanometer)
        let expectation: Double = 1467721728000000
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
    
    func testMileToMileNautical() {
        var result = Length.convert(value: 1, from: .mile, to: .mileNautical)
        var expectation: Double = 0.869
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
        
        
        result = Length.convert(value: 421, from: .mile, to: .mileNautical)
        expectation = 365.839
        
        XCTAssertEqual(result, expectation, accuracy: defaultAccuracy)
    }
}
