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

struct Unit { //defines a *type* of unit, eg a kg, a joule, not a singular unit with a value
    static var all = [Unit]()
    let name: String
    let uType: unitType
    let bUValue: Double
    
    private init(uType: unitType, name n: String, bU: Double) {
        self.name = n
        self.uType = uType
        self.bUValue = bU
    }
    
    static func populateArray() {
        addUnit(.mass, name: "g", bU: 1)
        addUnit(.mass, name: "kg", bU: 1/1000)
        addUnit(.mass, name: "lb", bU: 1/454)
        addUnit(.mass, name: "t", bU: 1/1e6)  //metric tonne imagine being american lol
        addUnit(.mass, name: "oz", bU: 1/28.35)
        
        addUnit(.distance, name: "m", bU: 1)
        addUnit(.distance, name: "km", bU: 1/1000)
        addUnit(.distance, name: "mi", bU: 1/1609)
        addUnit(.distance, name: "ft", bU: 3.28084)
        addUnit(.distance, name: "yd", bU: 1.09361)
        
        addUnit(.energy, name: "j", bU: 1)
        addUnit(.energy, name: "kj", bU: 1/1000)
        addUnit(.energy, name: "btu", bU: 1/1055)
        addUnit(.energy, name: "cal", bU: 1/4.184)
        addUnit(.energy, name: "kcal", bU: 1/4184)
        
        addUnit(.time, name: "s", bU: 1)
        addUnit(.time, name: "h", bU: 1/60)
        addUnit(.time, name: "w", bU: 1/604800)
        addUnit(.time, name: "d", bU: 1/86400)
    }
    
    private static func addUnit(_ type: unitType, name: String, bU: Double) {
        let u = Unit(uType: type, name: name, bU: bU)
        all.append(u)
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
