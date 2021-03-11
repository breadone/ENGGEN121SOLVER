//
//  main.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 8/03/21.
//  https://github.com/breadone/ENGGEN121SOLVER

import Foundation

print("select which type of problem youre having, from:")
print("1. Moments")

print("choice: ", terminator: "")
let choice = Int(readLine() ?? "-1")

switch choice {
case 1:
    momentSolver()
default:
    print("enter a valid selection")
}
