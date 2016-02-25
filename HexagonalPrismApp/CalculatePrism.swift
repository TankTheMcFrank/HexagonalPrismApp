//
//  CalculatePrism.swift
//  HexagonalPrismApp
//
//  Created by Frank Herring on 2/15/16.
//  Copyright © 2016 Frank Herring. All rights reserved.
//

import Foundation

class CalculatePrism {
    
    var label: String?
    var side: Double? = 0.0
    var height: Double? = 0.0
    
    init() {
        
        label = ""
        side = 0.0
        height = 0.0
        
    }
    
    func getLabel() -> String {
        
        return label!
        
    }
    
    func setLabel(newLabel: String?) -> Bool {
        
        if newLabel == "" {
            return false
        }
        else {
            label = newLabel!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            return true
        }
        
    }
    
    func getSide() -> Double {
        
        return side!
        
    }
    
    func setSide(newSide: Double?) -> Bool {
        
        if newSide == nil {
            return false
        }
        else {
            side = newSide!
            return true
        }
        
    }
    
    func getHeight() -> Double {
        
        return height!
        
    }
    
    func setHeight(newHeight: Double?) -> Bool {
        
        if newHeight == nil {
            return false
        }
        else {
            height = newHeight!
            return true
        }
        
    }
    
    func basePerimeter() -> Double {
        
        let perimeter: Double = 6.0 * side!
        return perimeter
        
    }
    
    func baseArea() -> Double {
        
        let baseArea: Double = ((3.0 * sqrt(3.0)) / 2.0) * pow(side!, 2.0)
        return baseArea
        
    }
    
    func surfaceArea() -> Double {
        
        let areaOfHexagons: Double = baseArea() * 2.0
        let areaOfSides: Double = (side! * height!) * 6.0
        let surfaceArea: Double = areaOfHexagons + areaOfSides
        return surfaceArea
        
    }
    
    func volume() -> Double {
        
        let volume: Double = baseArea() * height!
        return volume
        
    }
    
    func toString() -> String {
        
        let output: String = "Name: \(label!)\n"
                + "Side: \(side!)\n"
                + "Height: \(height!)\n"
                + "Base Perimeter: \(basePerimeter())\n"
                + "Base Area: \(baseArea())\n"
                + "Surface Area: \(surfaceArea())\n"
                + "Volume: \(volume())\n"
        return output
    }
}










class CalculateSquarePyramid {
    
    var label: String?
    var side: Double?
    var height: Double?
    
    
    init() {
        
        label = ""
        side = 0.0
        height = 0.0
        
    } // End of init()
    
    func getLabel() -> String {
        
        return label!
        
    } // End of getLabel()
    
    
    func setLabel(labelIn: String?) -> Bool {
        
        if labelIn == "" {
            return false
        }
        else {
            label = labelIn?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            return true
        }
    } // End of setLabel()
    
    
    func getSide() -> Double {
        
        return side!
        
    } // End of getSide()
    
    
    func setSide(sideIn: Double?) {
        
        side = sideIn
        
    } // End of setSide()
    
    
    func getHeight() -> Double {
        
        return height!
        
    } // End of getHeight()
    
    
    func setheight(heightIn: Double?) {
        
        height = heightIn
        
    } // End of setHeight()
    
    
    func basePerimeter() -> Double {
        
        return side! * 4
        
    } // End of basePerimeter()
    
    
    func baseArea() -> Double {
        
        return side! * side!
        
    } // End of baseArea()
    
    
    func surfaceArea() -> Double {
        
        let aSquared: Double = pow((side! / 2.0), 2.0)
        let bSquared: Double = pow(height!, 2.0)
        let hypotenuse: Double = sqrt((aSquared + bSquared))
        let triangleArea: Double = 0.5 * side! * hypotenuse
        let area: Double = baseArea() + (4 * triangleArea)
        
        return area
        
    } // End of surfaceArea()
    
    func volume() -> Double {
        
        let volume:Double = (1/3) * baseArea() * height!
        return volume
        
    } // End of volume()
    
    
    func toString() -> String {
        
        let output: String = "Name: \(label!)\n"
            + "Side: \(side!)\n"
            + "Height: \(height!)\n"
            + "Base Perimeter: \(basePerimeter())\n"
            + "Base Area: \(baseArea())\n"
            + "Surface Area: \(surfaceArea())\n"
            + "Volume: \(volume())\n"
        return output
        
    }
    
}










class CalculateTriangularPyramid {
    
    var label: String?
    var side: Double?
    var height: Double?
    
    
    init() {
        
        label = ""
        side = 0.0
        height = 0.0
        
    } // End of init()
    
    func getLabel() -> String {
        
        return label!
        
    } // End of getLabel()
    
    
    func setLabel(labelIn: String?) -> Bool {
        
        if labelIn == "" {
            return false
        }
        else {
            label = labelIn?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            return true
        }
    } // End of setLabel()
    
    
    func getSide() -> Double {
        
        return side!
        
    } // End of getSide()
    
    
    func setSide(sideIn: Double?) {
        
        side = sideIn
        
    } // End of setSide()
    
    
    func getHeight() -> Double {
        
        return height!
        
    } // End of getHeight()
    
    
    func setheight(heightIn: Double?) {
        
        height = heightIn
        
    } // End of setHeight()
    
    
    func basePerimeter() -> Double {
        
        return side! * 3
        
    } // End of basePerimeter()
    
    
    func baseArea() -> Double {
        
        let aSquared: Double = pow((side! / 2), 2.0)
        let cSquared: Double = pow(side!, 2.0)
        let baseHeight: Double = sqrt(cSquared - aSquared)
        let baseArea: Double = 0.5 * side! * baseHeight
        
        return baseArea
        
    } // End of baseArea()
    
    
    /*
    func surfaceArea() -> Double {
        
        let aSquared: Double = pow((side! / 2.0), 2.0)
        let bSquared: Double = pow(height!, 2.0)
        let hypotenuse: Double = sqrt((aSquared + bSquared))
        let triangleArea: Double = 0.5 * side! * hypotenuse
        let area: Double = baseArea() + (4 * triangleArea)
        
        return area
        
    } // End of surfaceArea()
    
    func volume() -> Double {
        
        let volume:Double = (1/3) * baseArea() * height!
        return volume
        
    } // End of volume()
    
    
    func toString() -> String {
        
        let output: String = "Name: \(label!)\n"
            + "Side: \(side!)\n"
            + "Height: \(height!)\n"
            + "Base Perimeter: \(basePerimeter())\n"
            + "Base Area: \(baseArea())\n"
            + "Surface Area: \(surfaceArea())\n"
            + "Volume: \(volume())\n"
        return output
        
    }
    */
    
}
