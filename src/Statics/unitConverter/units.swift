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
        Units.unitAppend(Unit(name: "kilogram", abbreviation: "kg", bU: 1000))
        Units.unitAppend(Unit(name: "pounds", abbreviation: "lb", bU: 0.00220462))
        
        //distance
        Units.unitAppend(Unit(name: "metres", abbreviation: "m", bU: 1))
        Units.unitAppend(Unit(name: "feet", abbreviation: "ft", bU: 3.28084))
        
        //energy
        Units.unitAppend(Unit(name: "joules", abbreviation: "J", bU: 1))
        Units.unitAppend(Unit(name: "british thermal units", abbreviation: "btu", bU: 1055.06))
        Units.unitAppend(Unit(name: "calories", abbreviation: "cal", bU: 4.184))
    }
    
    
    private static func unitAppend(_ u: Unit) {
        unitArray.append(u)
    }
}


struct singleUnit {
    var value: Float
    var abbr: String
    
}
