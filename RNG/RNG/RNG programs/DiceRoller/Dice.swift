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
    var name: String
    var image1: Image {
        Image(name)
    }
    var type: DiceType
    
    mutating func reRoll() {
        self.name = type.diceOptionNames.shuffled()[0]
    }
    
    static var all: [Dice] = DiceType.allCases.flatMap { diceType in
        return diceType.diceOptions
    }
}

enum DiceType: String, CaseIterable, Identifiable {
    case four = "4"
    case six = "6"
    case eight = "8"
    case ten = "10"
    case twelve = "12"
    
    var id: String {
        return self.rawValue
    }
    var diceOptionNames: [String] {
        switch self {
        case .four:
            return ["testImage"]
        case .six:
            return ["DiceSideOne", "DiceSideTwo", "DiceSideThree", "DiceSideFour", "DiceSideFive", "DiceSideSix"]
        case .eight:
            return []
        case .ten:
            return []
        case .twelve:
            return []
        }
    }
    var diceOptions: [Dice] {
        diceOptionNames.map({ Dice(name: $0, type: self) })
    }
}
