//
//  CardViewModel.swift
//  RNG
//
//  Created by Matthew on 1/19/22.
//

import Foundation

class CardViewModel: ObservableObject {
    var emptyArray: [Card] {
        [Card](shuffledDeck.prefix(numberVisible))
    }
    var shuffledDeck = Card.all.shuffled()
    @Published var numberVisible = 0
    
    func newCard() {
        guard numberVisible <= 6 else { return }
        numberVisible += 0
    }
    func shuffle() {
        if numberVisible == 0 {
            numberVisible = 1
        }
        shuffledDeck = Card.all.shuffled()
    }
    func addJokers() {
        Card.all.append(Card(name: "black_joker"))
        Card.all.append(Card(name: "red_joker"))
    }
    func removeJoker() {
//        Card.all.remove(
    }
}
