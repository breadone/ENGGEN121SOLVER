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
    let uType: unitType
    let bUValue: Float
    
    init(uType: unitType, name n: String, bU: Float) {
        self.name = n
        self.uType = uType
        self.bUValue = bU
    }
    
}

struct Units {
    static var unitArray: [Unit] = [Unit]()
    
    init() {
        //mass
        Units.unitAppend( Unit(uType: .mass,name: "g", bU: 1) )
        Units.unitAppend( Unit(uType: .mass,name: "kg", bU: 0.001) )
        Units.unitAppend( Unit(uType: .mass,name: "lb", bU: 0.00220462) )
         
        //distance
        Units.unitAppend( Unit(uType: .distance,name: "m", bU: 1) )
        Units.unitAppend( Unit(uType: .distance,name: "ft", bU: 3.28084) )
         
        //energy
        Units.unitAppend( Unit(uType: .energy, name: "j", bU: 1) )
        Units.unitAppend( Unit(uType: .energy, name: "btu", bU: 0.000947817) )
        Units.unitAppend( Unit(uType: .energy, name: "cal", bU: 0.000239006) )
    }
    
    
    private static func unitAppend(_ u: Unit) {
        unitArray.append(u)
    }
}


struct singleUnit {
    public var value: Float?
    public let name: String
    public let uType: unitType
    public let bU: Float
    
    init(value v: Float?, name a: String, uType u: unitType, bU: Float) {
        self.value = v
        self.name = a
        self.uType = u
        self.bU = bU
    }
    
    init(name a: String, uType u: unitType, bU: Float) {
        self.value = nil
        self.name = a
        self.uType = u
        self.bU = bU
    }
    
}
