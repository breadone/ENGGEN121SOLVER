//
//  main.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 8/03/21.
//  https://github.com/breadone/ENGGEN121SOLVER

import Foundation

let options: String = """
1. Moments
2. Centroids
3. Unit Converter
"""
print("Disclaimer: this is NOT a full autosolver. you still have to do some work to use this")
print("select which type of problem youre having, from:")
print(options)

print("choice: ", terminator: "")
let choice = Int(readLine() ?? "-1")

switch choice {
case -1:
    debugCode()
case 1:
    momentSolver()
case 2:
    centroidSolver()
case 3:
    unitConverter()
default:
    print("enter a valid selection")
}

#if DEBUG
//add debug code here, input -1 to run
fileprivate func debugCode() {
    print(inParse("123@213", type: .force))
}
#endif
