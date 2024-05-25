//
//  ToNonRetardStaticLibrary.swift
//  ToNonRetardStaticLibrary
//
//  Created by Sergei Semko on 5/25/24.
//

import Foundation

public enum MeasurementType {
    case length
    case mass
    
    public var type: any Convertible.Type {
        switch self {
        case .length:
            Length.self
        case .mass:
            Mass.self
        }
    }
}

public class Converter {
    public static func convert<T: Convertible>(
        value: Double,
        of type: T.Type,
        from unitFrom: T.Retard,
        to unitTo: T.NonRetard
    ) -> Double {
        T.convert(value: value, from: unitFrom, to: unitTo)
    }
    
    private init() {}
}
