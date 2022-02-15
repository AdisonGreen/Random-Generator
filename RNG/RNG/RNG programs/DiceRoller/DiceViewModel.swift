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
        let newDice = diceType.diceOptions.shuffled()[0]
        diceArray.append(newDice)
    }
    func removeDice(of diceType: DiceType) {
//        let removingDice = diceType.diceOptions.shuffled()
        
    }
    func reRollAllDice() {
        diceArray = diceArray.map({ dice in
            var newDice = dice
            newDice.reRoll()
            return newDice
        })
    }
    var diceVisible: Int {
        diceArray.count
    }
}
