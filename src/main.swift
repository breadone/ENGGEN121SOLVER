//
//  main.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 8/03/21.
//  https://github.com/breadone/ENGGEN121SOLVER

import Foundation

let options: String = """
1. Moment Solver
2. Centroid Solver
3. Unit Converter
4. Truss Solver
"""
print("Which function:")
print(options)

var f = false
repeat {
    let choice = Int(input("choice: "))
    
    switch choice {
    case -1:
        debugCode()
        f = true
    case 1:
        momentSolver()
        f = true
    case 2:
        centroidSolver()
        f = true
    case 3:
        unitConverter()
        f = true
    case 4:
        trussSolver()
        f = true
    default:
        print("enter a valid selection")
    }
} while f == false

#if DEBUG
//add debug code here, input -1 to run
fileprivate func debugCode() {
//    print(inputParse("what to convert: ", type: .units))
    trussSolver()
}
#endif
