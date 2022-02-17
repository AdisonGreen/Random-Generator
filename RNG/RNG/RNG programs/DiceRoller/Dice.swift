//
//  Dice.swift
//  RNG
//
//  Created by Matthew on 2/10/22.
//

import Foundation
import SwiftUI

struct Dice: Identifiable, Equatable {
    var id: UUID = UUID()
    var name: String
    var image1: Image {
        Image(name)
    }
    
    var type: DiceType
    
    mutating func reRoll() -> Int {
        let howMuchInType = type.diceOptions.count
        let randomIndex = Int.random(in: 0..<howMuchInType)
        
        let newDice = type.diceOptions[randomIndex]
        self.name = newDice.name
        
        return randomIndex + 1
    }
    
    func addTheTotal() -> Int {
        let diceType = type.diceOptions.first
        
        return 0
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
            return ["PlaceholderDiceFourSideOne", "PlaceholderDiceFourSideTwo", "PlaceholderDiceFourSideThree", "PlaceholderDiceFourSideFour"]
        case .six:
            return ["DotDiceSixSideOne", "DotDiceSixSideTwo", "DotDiceSixSideThree", "DotDiceSixSideFour", "DotDiceSixSideFive", "DotDiceSixSideSix"]
        case .eight:
            return ["PlaceholderDiceEightSideOne", "PlaceholderDiceEightSideTwo", "PlaceholderDiceEightSideThree", "PlaceholderDiceEightSideFour", "PlaceholderDiceEightSideFive", "PlaceholderDiceEightSideSix", "PlaceholderDiceEightSideSeven", "PlaceholderDiceEightSideEight"]
        case .ten:
            return ["PlaceholderDiceTenSideOne", "PlaceholderDiceTenSideTwo", "PlaceholderDiceTenSideThree", "PlaceholderDiceTenSideFour", "PlaceholderDiceTenSideFive", "PlaceholderDiceTenSideSix", "PlaceholderDiceTenSideSeven", "PlaceholderDiceTenSideEight", "PlaceholderDiceTenSideNine", "PlaceholderDiceTenSideTen", ]
        case .twelve:
            return ["PlaceholderDiceTwelveSideOne", "PlaceholderDiceTwelveSideTwo", "PlaceholderDiceTwelveSideThree", "PlaceholderDiceTwelveSideFour", "PlaceholderDiceTwelveSideFive", "PlaceholderDiceTwelveSideSix", "PlaceholderDiceTwelveSideSeven", "PlaceholderDiceTwelveSideEight", "PlaceholderDiceTwelveSideNine", "PlaceholderDiceTwelveSideTen", "PlaceholderDiceTwelveSideEleven", "PlaceholderDiceTwelveSideTwelve", ]
        }
    }
    var diceOptions: [Dice] {
        diceOptionNames.map({ Dice(name: $0, type: self) })
    }
}
