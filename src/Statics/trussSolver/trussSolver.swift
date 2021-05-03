//
//  trussSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

func trussSolver() {
    var board: [[String]] {
        let boardRow: [String] = Array(repeating: "•", count: Preferences.boardSize)
        return Array(repeating: boardRow, count: Preferences.boardSize)
    }
    
    func changeBoardPos(_ cx: Int, _ cy: Int, type: BoardDisplay) {
//        board[cx][cy] = type.displayChar
    }
    
    
//    print2dArray(board)
}
