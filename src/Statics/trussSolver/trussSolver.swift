//
//  trussSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

func trussSolver() {
    var board: [[String]] = {
        let boardRow: [String] = Array(repeating: "•", count: Preferences.boardSize)
        return Array(repeating: boardRow, count: Preferences.boardSize)
    }()
    
    func changeBoardPos(_ cx: Int, _ cy: Int, type: BoardDisplay.Type) {
        let aY: Int = (Preferences.boardSize - cy)
        board[aY][cx - 1] = type.displayChar
    }
    
    changeBoardPos(2, 1, type: joint.self)
    print2dArray(board)
}
