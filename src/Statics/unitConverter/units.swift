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
    let cf: Double
    
    private init(uType: unitType, name n: String, cf: Double) {
        self.name = n
        self.uType = uType
        self.cf = cf
    }
    
    static func populateArray() {
        addUnit(.mass, name: "g", cf: 1)
        addUnit(.mass, name: "kg", cf: 1/1000)
        addUnit(.mass, name: "lb", cf: 1/454)
        addUnit(.mass, name: "t", cf: 1/1e6)  //metric tonne imagine being american lol
        addUnit(.mass, name: "oz", cf: 1/28.35)
        
        addUnit(.distance, name: "m", cf: 1)
        addUnit(.distance, name: "km", cf: 1/1000)
        addUnit(.distance, name: "mi", cf: 1/1609)
        addUnit(.distance, name: "ft", cf: 3.28084)
        addUnit(.distance, name: "in", cf: 39.37)
        addUnit(.distance, name: "yd", cf: 1.09361)
        
        addUnit(.energy, name: "j", cf: 1)
        addUnit(.energy, name: "kj", cf: 1/1000)
        addUnit(.energy, name: "btu", cf: 1/1055)
        addUnit(.energy, name: "cal", cf: 1/4.184)
        addUnit(.energy, name: "kcal", cf: 1/4184)
        
        addUnit(.time, name: "s", cf: 1)
        addUnit(.time, name: "min", cf: 1/60)
        addUnit(.time, name: "h", cf: 1/3600)
        addUnit(.time, name: "w", cf: 1/604800)
        addUnit(.time, name: "d", cf: 1/86400)
    }
    
    private static func addUnit(_ type: unitType, name: String, cf: Double) {
        let u = Unit(uType: type, name: name, cf: cf)
        all.append(u)
    }
    
}

struct singleUnit {
    public var value: Double?
    public let name: String
    public let uType: unitType
    public let cf: Double
    
    init(value v: Double?, name a: String, uType u: unitType, cf: Double) {
        self.value = v
        self.name = a
        self.uType = u
        self.cf = cf
    }
    
    init(name a: String, uType u: unitType, cf: Double) {
        self.value = nil
        self.name = a
        self.uType = u
        self.cf = cf
    }
    
}
