//
//  BoardDisplayType.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

protocol BoardDisplay {
    var id: String? { set get }
    static var displayChar: String { get }
    var x: Int { get set }
    var y: Int { get set }
    init(xy: [Int], id: String)
}

struct joint: BoardDisplay {
    var id: String?
    
    var x: Int
    var y: Int
    
    static var currentID: Int = 0
    static let displayChar: String = "x"

    init(xy: [Int], id: String) {
        self.x = xy.first! - 1
        self.y = Preferences.boardSize - xy.last!
        self.id = id
    }
}

struct BLTRmember: BoardDisplay {
    var id: String?
    
    var x: Int
    var y: Int
    static let displayChar: String = "/"

    
    init(xy: [Int], id: String = "") {
        self.x = xy.first! - 1
        self.y = Preferences.boardSize - xy.last!
        self.id = id
    }
}

struct TLBRmember: BoardDisplay {
    var id: String?
    
    var x: Int
    var y: Int
    static let displayChar: String = "\\"
    
    init(xy: [Int], id: String = "") {
        self.x = xy.first! - 1
        self.y = Preferences.boardSize - xy.last!
        self.id = id
    }
}

struct Hmember: BoardDisplay {
    var id: String?
    
    var x: Int
    var y: Int
    static let displayChar: String = "-"
    
    init(xy: [Int], id: String = "") {
        self.x = xy.first! - 1
        self.y = Preferences.boardSize - xy.last!
        self.id = id
    }

}

struct Vmember: BoardDisplay {
    var id: String?
    
    var x: Int
    var y: Int
    static let displayChar: String = "|"

    init(xy: [Int], id: String = "") {
        self.x = xy.first! - 1
        self.y = Preferences.boardSize - xy.last!
        self.id = id
    }

}

struct pin: BoardDisplay {
    var id: String?
    
    var x: Int
    var y: Int
    static let displayChar: String = "∆"
    
    init(xy: [Int], id: String = "") {
        self.x = xy.first! - 1
        self.y = Preferences.boardSize - xy.last!
        self.id = id
    }
}
