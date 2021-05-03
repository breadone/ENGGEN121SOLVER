//
//  BoardDisplayType.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

protocol BoardDisplay {
    var displayChar: String { get }
}

struct joint: BoardDisplay {
    let displayChar: String = "x"
    enum coord: Int {
        case x
        case y
    }
}

struct BLTRmember: BoardDisplay {
    let displayChar: String = "/"
    enum coord: Int {
        case x
        case y
    }
}

struct TRBLmember: BoardDisplay {
    let displayChar: String = "\\"
    enum coord: Int {
        case x
        case y
    }
}

struct Hmember: BoardDisplay {
    let displayChar: String = "-"
    enum coord: Int {
        case x
        case y
    }
}

struct Vmember: BoardDisplay {
    let displayChar: String = "|"
    enum coord: Int {
        case x
        case y
    }
}

struct pin: BoardDisplay {
    let displayChar: String = "∆"
    enum coord: Int {
        case x
        case y
    }
}
