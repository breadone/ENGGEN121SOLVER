//
//  centroidSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 12/03/21.
//

import Foundation

struct Shape {
    let area: Double
    let xDist, yDist: Double
    let xCent, yCent: Double
    
    init(area: Double, xDist: Double, yDist: Double) {
        self.area = area
        self.xDist = xDist
        self.yDist = yDist
        self.xCent = self.area * self.xDist
        self.yCent = self.area * self.yDist
    }
}

func centroidSolver() {
    var shapes = [Shape]()
    print("Centroid Solver")
    print("This solver uses the 'split into subshapes and add' method, so find the area of each subshape, and their distances from your reference point.", terminator: "\n\n")
    
    let subShapeCount: Int = Int(input("how many subshapes are there: "))!
    
    for _ in 0...subShapeCount - 1 {
        let newShapeArea = Double(input("enter area of new shape: "))!
        let newShapeXDist = Double(input("enter x distance to centre of shape: "))!
        let newShapeYDist = Double(input("enter y distance to centre of shape: "))!
        shapes.append(Shape(area: newShapeArea, xDist: newShapeXDist, yDist: newShapeYDist))
    }
    
    var totalArea: Double = 0
    var xSum: Double = 0
    var ySum: Double = 0

    for i in 0...shapes.count - 1 {
        totalArea += shapes[i].area
        xSum += shapes[i].xCent
        ySum += shapes[i].yCent
    }
    
    let xCoord = (xSum / totalArea).roundToPlaces(toPlaces: Preferences.precision)
    let yCoord = (ySum / totalArea).roundToPlaces(toPlaces: Preferences.precision)
    
    answerOut("(\(xCoord), \(yCoord))")
}
