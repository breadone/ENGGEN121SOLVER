//
//  trussSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 3/05/21.
//

import Foundation

fileprivate var board: [[String]] = {
    let boardRow = Array(repeating: " ", count: Preferences.boardSize)
    return Array(repeating: boardRow, count: Preferences.boardSize)
}()
fileprivate var jointArray = [joint]()

func trussSolver() {
    createJoint([7, 7])
    createJoint([2, 2])
    createMember(0, 1)
    print2dArray(board)
}

func createJoint(_ xy: [Int]) {
    let x = xy.first! - 1
    let y = Preferences.boardSize - xy.last!
    jointArray.append( joint(xy: [x, y], id: "\(jointArray.count)") )
    board[y][x] = joint.displayChar
}

func createMember(_ a: Int, _ b: Int) {
    let xdiff = jointArray[a].x - jointArray[b].x

    for i in 1..<xdiff {
        board[(xdiff % 2 == 0) ? (i + 1) : (i + 2)][jointArray[a].x - i + 1] = BLTRmember.displayChar
    }
}
