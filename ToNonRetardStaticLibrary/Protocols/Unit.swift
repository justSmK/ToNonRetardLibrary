//
//  Unit.swift
//  ToNonRetardStaticLibrary
//
//  Created by Sergei Semko on 5/25/24.
//

import Foundation

public protocol Unit: RawRepresentable where RawValue == Double {
    var baseUnit: Double { get }
}

extension Unit {
    public var baseUnit: Double {
        self.rawValue
    }
}
