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
    static var massArray = [Unit]()
    static var distanceArray = [Unit]()
    static var energyArray = [Unit]()
    
    init() {
        //mass
        Units.unitAppend(.mass, Unit: Unit(name: "grams", abbreviation: "g", bU: 1))
        Units.unitAppend(.mass, Unit: Unit(name: "pounds", abbreviation: "lb", bU: 0.00220462))
        
        //distance
        Units.unitAppend(.distance, Unit: Unit(name: "metres", abbreviation: "m", bU: 1))
        Units.unitAppend(.distance, Unit: Unit(name: "feet", abbreviation: "ft", bU: 3.28084))
        
        //energy
        Units.unitAppend(.energy, Unit: Unit(name: "joules", abbreviation: "J", bU: 1))
        Units.unitAppend(.energy, Unit: Unit(name: "british thermal units", abbreviation: "BTU", bU: 1055.06))
        Units.unitAppend(.energy, Unit: Unit(name: "calories", abbreviation: "cal", bU: 4.184))
    }
    
    
    fileprivate static func unitAppend(_ a: unitType, Unit u: Unit) {
        switch a {
        case .mass:
            massArray.append(u)
        case .distance:
            distanceArray.append(u)
        case .energy:
            energyArray.append(u)
        }
    }
}


struct singleUnit {
    var value: Float
    var type: unitType
    var abbr: String
    
}
