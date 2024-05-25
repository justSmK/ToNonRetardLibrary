//
//  ToNonRetardStaticLibraryTests.swift
//  ToNonRetardStaticLibraryTests
//
//  Created by Sergei Semko on 5/25/24.
//

import XCTest
@testable import ToNonRetardStaticLibrary

final class ToNotRetardStaticLibraryTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }

    func testExample() throws {
        var test = Length.convert(value: 1, from: .mile, to: .meter)
        print(test)
        
        test = Length.convert(value: 2, from: .mile, to: .meter)
        print(test)
        
        
        test = Length.convert(value: 1, from: .mile, to: .banana)
        print(test)
        
        test = Length.convert(value: 1, from: .mile, to: .micrometer)
        print(test)
    }
}
