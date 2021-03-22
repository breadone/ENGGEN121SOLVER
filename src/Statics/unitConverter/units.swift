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

struct Unit {
    let name: String
    let abbreviation: String
    let uType: unitType
    let bUValue: Float
    
    init(name: String, abbreviation: String, uType: unitType, bU: Float) {
        self.name = name
        self.abbreviation = abbreviation
        self.uType = uType
        self.bUValue = bU
    }
    
}

struct Units {
    var massArray = [Unit]()
    var distanceArray = [Unit]()
    var energyArray = [Unit]()
    
    init() {
        //mass
        unitAppend(.mass, Unit: Unit(name: "grams", abbreviation: "g", uType: .mass, bU: 1))
        unitAppend(.mass, Unit: Unit(name: "pounds", abbreviation: "lb", uType: .mass, bU: 0.00220462))
        
        //distance
        unitAppend(.distance, Unit: Unit(name: "metres", abbreviation: "m", uType: .distance, bU: 1))
        unitAppend(.distance, Unit: Unit(name: "foot", abbreviation: "ft", uType: .distance, bU: 3.28084))
        
        //energy
        unitAppend(.energy, Unit: Unit(name: "joules", abbreviation: "J", uType: .energy, bU: 1))
        unitAppend(.energy, Unit: Unit(name: "british thermal units", abbreviation: "BTU", uType: .energy, bU: 1055.06))
    }
    
    
    fileprivate mutating func unitAppend(_ a: unitType,Unit u: Unit) {
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
