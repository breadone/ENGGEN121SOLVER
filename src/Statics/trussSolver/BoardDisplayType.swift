//
//  BoardDisplayType.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

protocol BoardDisplay {
    static var displayChar: String { get }
}

struct joint: BoardDisplay {
    static let displayChar: String = "x"
    enum coord: Int {
        case x
        case y
    }
}

struct BLTRmember: BoardDisplay {
    static let displayChar: String = "/"
    enum coord: Int {
        case x
        case y
    }
}

struct TRBLmember: BoardDisplay {
    static let displayChar: String = "\\"
    enum coord: Int {
        case x
        case y
    }
}

struct Hmember: BoardDisplay {
    static let displayChar: String = "-"
    enum coord: Int {
        case x
        case y
    }
}

struct Vmember: BoardDisplay {
    static let displayChar: String = "|"
    enum coord: Int {
        case x
        case y
    }
}

struct pin: BoardDisplay {
    static let displayChar: String = "∆"
    enum coord: Int {
        case x
        case y
    }
}
