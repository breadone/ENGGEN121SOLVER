//
//  units.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 20/03/21.
//

import Foundation

enum unitType {
    case mass
    case distance
    case energy
    case time
}

struct Unit { //defines a *type* of unit, eg a kg, a N, not a singular unit
    let name: String
    let uType: unitType
    let bUValue: Double
    
    init(uType: unitType, name n: String, bU: Double) {
        self.name = n
        self.uType = uType
        self.bUValue = bU
    }
    
}

struct Units {
    static var unitArray: [Unit] = [Unit]()
    
    init() {
        Units.unitAppend( Unit(uType: .mass, name: "g", bU: 1) )
        Units.unitAppend( Unit(uType: .mass, name: "kg", bU: 0.001) )
        Units.unitAppend( Unit(uType: .mass, name: "lb", bU: 0.00220462) )
        Units.unitAppend( Unit(uType: .mass, name: "t", bU: 0.000001) ) //metric tonne
        Units.unitAppend( Unit(uType: .mass, name: "oz", bU: 0.035274) )
         
        Units.unitAppend( Unit(uType: .distance, name: "m", bU: 1) )
        Units.unitAppend( Unit(uType: .distance, name: "km", bU: 0.001) )
        Units.unitAppend( Unit(uType: .distance, name: "mi", bU: 0.000621371) )
        Units.unitAppend( Unit(uType: .distance, name: "ft", bU: 3.28084) )
        Units.unitAppend( Unit(uType: .distance, name: "yd", bU: 1.09361) )
         
        Units.unitAppend( Unit(uType: .energy, name: "j", bU: 1) )
        Units.unitAppend( Unit(uType: .energy, name: "kj", bU: 0.001) )
        Units.unitAppend( Unit(uType: .energy, name: "btu", bU: 0.000947817) )
        Units.unitAppend( Unit(uType: .energy, name: "cal", bU: 0.2390057361) )
        Units.unitAppend( Unit(uType: .energy, name: "kcal", bU: 0.000239006))
        
        Units.unitAppend( Unit(uType: .time, name: "s", bU: 1) )
        Units.unitAppend( Unit(uType: .time, name: "h", bU: 1/60) )
        Units.unitAppend( Unit(uType: .time, name: "w", bU: 1/604800) )
        Units.unitAppend( Unit(uType: .time, name: "d", bU: 1/86400) )
    }
    
    private static func unitAppend(_ u: Unit) {
        unitArray.append(u)
    }
}


struct singleUnit {
    public var value: Double?
    public let name: String
    public let uType: unitType
    public let bU: Double
    
    init(value v: Double?, name a: String, uType u: unitType, bU: Double) {
        self.value = v
        self.name = a
        self.uType = u
        self.bU = bU
    }
    
    init(name a: String, uType u: unitType, bU: Double) {
        self.value = nil
        self.name = a
        self.uType = u
        self.bU = bU
    }
    
}
