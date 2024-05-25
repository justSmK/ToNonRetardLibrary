//
//  Convert.swift
//  ToNonRetardStaticLibrary
//
//  Created by Sergei Semko on 5/25/24.
//

import Foundation

public protocol Convertible {
    associatedtype Retard: Unit
    associatedtype NonRetard: Unit
    
    static func convert(value: Double, from unitFrom: Retard, to unitTo: NonRetard) -> Double
}

extension Convertible {
    public static func convert(value: Double, from unitFrom: Retard, to unitTo: NonRetard) -> Double {
        let baseValue = value * unitFrom.baseUnit
        return baseValue / unitTo.baseUnit
    }
}
