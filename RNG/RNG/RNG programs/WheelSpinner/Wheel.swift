//
//  Wheel.swift
//  RNG
//
//  Created by Adison Green on 2/3/22.
//

import SwiftUI

struct Wheel: View {
    let myChosenListItems: [String]
    
    var body: some View {
        ZStack {
            ForEach(myChosenListItems.indices, id: \.self) { index in
                let sizeOfWheelSlice = 360.0 / Double(myChosenListItems.count)
                
               SliceView(sizeOfWheelSlice: sizeOfWheelSlice, index: index)
                    .foregroundColor(chooseAColor(index: index))
                    .frame(width: 400, height: 700)
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
        Wheel(myChosenListItems: ["1", "2", "3", "4"])
    }
}
