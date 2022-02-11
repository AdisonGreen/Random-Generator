//
//  Dice.swift
//  RNG
//
//  Created by Matthew on 2/10/22.
//

import Foundation
import SwiftUI

struct Dice: Identifiable {
    var id: UUID = UUID()
    let name: String
    var image1: Image {
        Image(name)
    }
    
    static var all: [Dice] = dice.map { Dice(name: $0)}
}
private var dice = ["DiceSideOne", "DiceSideTwo", "DiceSideThree", "DiceSideFour", "DiceSideFive", "DiceSideSix"]
