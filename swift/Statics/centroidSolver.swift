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
    var shapeArray = [Shape]()
    print("Centroid Solver")
    print("This solver uses the 'find big shape then subtract subshapes' method, so find the area of the total big shape, area of all subshapes, and their distances from your reference point. ", terminator: "\n\n")
    
    let subShapeCount: Int = Int(input("how many subshapes: "))!
    let mainShapeArea = Double(input("enter area of main shape: "))!
    let mainShapeXDist = Double(input("enter x distance from reference point to centre of shape: "))!
    let mainShapeYDist = Double(input("enter y distance from reference point to centre of shape: "))!
    
    let mainShape = Shape(area: mainShapeArea, xDist: mainShapeXDist, yDist: mainShapeYDist)
    
    for _ in 0...subShapeCount - 1 {
        let newShapeArea = Double(input("enter area of new shape: "))!
        let newShapeXDist = Double(input("enter x distance from reference point to centre of shape: "))!
        let newShapeYDist = Double(input("enter y distance from reference point to centre of shape: "))!
        shapeArray.append(Shape(area: newShapeArea, xDist: newShapeXDist, yDist: newShapeYDist))
    }
    
    var mainArea: Double = mainShape.area
    var xTemp: Double = 0
    var yTemp: Double = 0

    for i in 0...shapeArray.count - 1 {
        mainArea -= shapeArray[i].area
        xTemp -= shapeArray[i].xCent
        yTemp -= shapeArray[i].yCent
    }
    
    let xCoord = (xTemp / mainArea).roundToPlaces(toPlaces: precision)
    let yCoord = (yTemp / mainArea).roundToPlaces(toPlaces: precision)
    let output = "(\(xCoord), \(yCoord))"
    
    answerOut(output)
    
}


