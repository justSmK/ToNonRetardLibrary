//
//  Length.swift
//  ToNonRetardStaticLibrary
//
//  Created by Sergei Semko on 5/25/24.
//

import Foundation

public enum Length {
    public enum Retard: Double {
        case caliber = 0.000254
        case ell = 1.143
        case em = 0.004
        case fathom = 1.829
        case furlong = 201.168
        case foot = 0.3048
        case inch = 0.0254
        
        case league = 55566
        
        case mil = 2.54e-5
        
        case mile = 1609.344
        case mileUKNautical = 1853.184
        case mileUSNautical = 1852
        case point = 0.000352778
        case rod = 5.029
        case yard = 0.9144
        
        
        var baseUnit: Double {
            self.rawValue
        }
    }
    
    public enum NonRetard: Double {
        case meter = 1
        case centimeter = 0.01
        case kilometer = 1000.0
        
        // https://www.converttobananas.com
        case banana = 0.178
        
        case fermi = 1.0E-15
        
        case lightYear = 9.461e+15
        case micrometer = 1e-6
        case millimeter = 0.001
        case nanometer = 1e-9
        case mileNautical = 1852
        case picometer = 1e-12
        
        var baseUnit: Double {
            self.rawValue
        }
    }
    
    public static func convert(value: Double, from unitFrom: Retard, to unitTo: NonRetard) -> Double {
        let baseValue = value * unitFrom.baseUnit
        return baseValue / unitTo.baseUnit
    }
}
