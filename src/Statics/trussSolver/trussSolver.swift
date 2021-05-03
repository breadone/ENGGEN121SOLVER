//
//  trussSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

func trussSolver() {
    var board: [[String]] {
        let boardRow: [String] = Array(repeating: "x", count: 5)
        return Array(repeating: boardRow, count: 5)
    }
    
    print2dArray(board)
}


struct joint {
    enum coord: Int {
        case x, y
    }
    
}
