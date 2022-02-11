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
    
    var diceArray: [Dice] {
        [Dice](shuffledDice.prefix(diceVisible))
    }
    var shuffledDice = Dice.all.shuffled()
    @Published var diceVisible = 0
    
    func newDice() {
        guard diceVisible <= 100 else { return }
        diceVisible += 0
        //diceVisible keeps going up but the layout stops at 6 dice
        print(diceVisible)
    }
    func shuffle() {
        if diceVisible == 0 {
            diceVisible = 1
        }
        shuffledDice = Dice.all.shuffled()
    }
    
}
