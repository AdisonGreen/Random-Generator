//
//  Wheel.swift
//  RNG
//
//  Created by Adison Green on 2/3/22.
//

import SwiftUI

struct drawWheel: InsettableShape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct Wheel: View {
    let myChosenListItems = ["a", "b", "c", "d", "e", "f", "g", "1", "2", "3", "4", "5"]
    
    var body: some View {
        ZStack {
            ForEach(myChosenListItems.indices, id: \.self) { item in
                let sizeOfWheelSlice = 360.0 / Double(myChosenListItems.count)
                
                let sizeOfPie = Double(sizeOfWheelSlice)
                let startPoint = Double(sizeOfWheelSlice) * Double(item + 1)
                let endPoint = sizeOfPie + startPoint
                
                drawWheel(startAngle: .degrees(startPoint), endAngle: .degrees(endPoint), clockwise: true)
                    .foregroundColor(chooseAColor(index: item))
//                Text(myChosenListItems[item])
            }
        }
    }
    
    func chooseAColor(index: Int) -> Color {
        let colorOptions = [Color.blue, Color.red, Color.green, Color.yellow, Color.brown, Color.mint, Color.purple, Color.orange, Color.pink, Color.purple, Color.gray]
        if index <= 10 {
            return colorOptions[index]
        } else {
            let randomColorIndex = Int.random(in: 0...10)
            return colorOptions[randomColorIndex]
        }
        
    }
}

struct Wheel_Previews: PreviewProvider {
    static var previews: some View {
        Wheel()
    }
}
