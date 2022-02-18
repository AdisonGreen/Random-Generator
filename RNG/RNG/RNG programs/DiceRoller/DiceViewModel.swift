//
//  DiceViewModel.swift
//  RNG
//
//  Created by Matthew on 2/10/22.
//

import Foundation
import SwiftUI

class DiceViewModel: ObservableObject {
    var total = 0
    @Published var diceArray: [Dice] = []
    
    func addDice(of diceType: DiceType) {
        let howMuchInType = diceType.diceOptions.count
        let randomIndex = Int.random(in: 0..<howMuchInType)
        
        let newDice = diceType.diceOptions[randomIndex]
        diceArray.append(newDice)
        total += randomIndex + 1
    }
    
    func reRollAllDice() {
        total = 0
        diceArray = diceArray.map({ dice in
            var newDice = dice
            let number = newDice.reRoll()
            total += number
            return newDice
        })
    }
    
    var diceVisible: Int {
        diceArray.count
    }
}
