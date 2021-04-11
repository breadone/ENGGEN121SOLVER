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
"""
print("Which function:")
print(options)

    
repeat {
    let choice = Int(input("choice: "))
    
    switch choice {
    case -1:
        debugCode()
        break
    case 1:
        momentSolver()
        break
    case 2:
        centroidSolver()
        break
    case 3:
        unitConverter()
        break
    default:
        print("enter a valid selection")
    }
} while true

#if DEBUG
//add debug code here, input -1 to run
fileprivate func debugCode() {
    print(inputParse("what to convert: ", type: .units))

}
#endif
