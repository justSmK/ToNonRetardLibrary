//
//  Mass.swift
//  ToNonRetardStaticLibrary
//
//  Created by Sergei Semko on 5/25/24.
//

import Foundation

public protocol Convert {
    associatedtype UnitFrom
    associatedtype UnitTo
    
    static func convert(value: Double, from unitFrom: UnitFrom, to unitTo: UnitTo) -> Double
}

public enum Mass {
    public enum Retard: Double {
        case stone = 6.35029
        case hundredweightShort = 45.359
        case hundredweightLong = 50.802345
        case poundLBM = 0.453592142840941
        case poundTroy = 0.373236
        case ounceOZM = 0.028349508927558813437
        case ounceTroy = 0.0311035
        case slug = 14.5939
        case tonAssay = 0.02916667
        case tonLong = 1016.047
        case tonShort = 907.185
        
        var baseUnit: Double {
            self.rawValue
        }
    }
    
    public enum NonRetard: Double {
        case kilogram = 1.0
        case gram = 0.001
        case milligram = 1e+6
        case microgram = 1e+9
        
        case banana = 0.113
        case carat = 0.0002
        
        case ton = 1000.0
        
        var baseUnit: Double {
            self.rawValue
        }
    }
    
//    public static func convert(value: Double, from unitFrom: Retard, to unitTo: NotRetard) -> Double {
//        let baseValue = value * unitFrom.baseUnit
//        return baseValue / unitTo.baseUnit
//    }
}

extension Mass: Convert {
    public static func convert(value: Double, from unitFrom: Retard, to unitTo: NonRetard) -> Double {
        let baseValue = value * unitFrom.baseUnit
        return baseValue / unitTo.baseUnit
    }
}
