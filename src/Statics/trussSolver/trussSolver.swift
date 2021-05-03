//
//  trussSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

fileprivate var board: [[String]] = {
    let boardRow = Array(repeating: "•", count: Preferences.boardSize)
    return Array(repeating: boardRow, count: Preferences.boardSize)
}()

func trussSolver() {
    createJoint([2, 1])
    print2dArray(board)
}

func createJoint(_ xy: [Int]) {
    let x = xy.first! - 1
    let y = Preferences.boardSize - xy.last!
    let _ = joint(xy: [x, y], id: "\(joint.currentID)")
    joint.currentID += 1
    board[y][x] = joint.displayChar
}

func createMember(_ a: joint, _ b: joint) {
    
}
