//
//  WheelArrow.swift
//  RNG
//
//  Created by Adison Green on 2/9/22.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxX))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct WheelArrow: View {
    var body: some View {
        Triangle()
            .fill(.black)
            .rotationEffect(.degrees(180))
            .frame(width: 50, height: 50)
    }
}

struct WheelArrow_Previews: PreviewProvider {
    static var previews: some View {
        WheelArrow()
    }
}
