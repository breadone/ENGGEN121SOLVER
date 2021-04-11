//
//  units.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 20/03/21.
//

import Foundation

enum unitType { //TODO: add more of these
    case mass
    case distance
    case energy
}

struct Unit { //defines a *type* of unit, eg a kg, a N, not a singular unit
    let name: String
    let abbreviation: String
//    let uType: unitType
    let bUValue: Float
    
    init(name: String, abbreviation: String, bU: Float) {
        self.name = name
        self.abbreviation = abbreviation
//        self.uType = uType
        self.bUValue = bU
    }
    
}

struct Units {
    static var unitArray: [Unit] = [Unit]()
    
    init() {
        //mass
        Units.unitAppend(Unit(name: "grams", abbreviation: "g", bU: 1))
        Units.unitAppend(Unit(name: "kilogram", abbreviation: "kg", bU: 0.001))
        Units.unitAppend(Unit(name: "pounds", abbreviation: "lb", bU: 0.00220462))
        
        //distance
        Units.unitAppend(Unit(name: "metres", abbreviation: "m", bU: 1))
        Units.unitAppend(Unit(name: "feet", abbreviation: "ft", bU: 3.28084))
        
        //energy
        Units.unitAppend(Unit(name: "joules", abbreviation: "j", bU: 1))
        Units.unitAppend(Unit(name: "british thermal units", abbreviation: "btu", bU: 0.000947817))
        Units.unitAppend(Unit(name: "calories", abbreviation: "cal", bU: 0.000239006))
    }
    
    
    private static func unitAppend(_ u: Unit) {
        unitArray.append(u)
    }
}


struct singleUnit {
    public var value: Float?
    public let abbr: String
    public let bU: Float
    
    init(value v: Float?, abbr a: String, bU: Float) {
        self.value = v
        self.abbr = a
        self.bU = bU
    }
    
    init(abbr a: String, bU: Float) {
        self.value = nil
        self.abbr = a
        self.bU = bU
    }
    
}
