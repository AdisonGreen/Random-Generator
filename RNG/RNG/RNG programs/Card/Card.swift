//
//  Card.swift
//  RNG
//
//  Created by Matthew on 1/19/22.
//

import SwiftUI

struct Card: Identifiable {
    var id: UUID = UUID()
    let name: String
    var image: Image {
        Image(name)
    }
    
    static var all: [Card] = cards.map { Card(name: $0) }
}
private var cards = ["ace_of_hearts", "2_of_hearts", "3_of_hearts", "4_of_hearts", "5_of_hearts", "6_of_hearts", "7_of_hearts", "8_of_hearts", "9_of_hearts", "10_of_hearts", "jack_of_hearts2", "queen_of_hearts2", "king_of_hearts2", "ace_of_diamonds", "2_of_diamonds", "3_of_diamonds", "4_of_diamonds", "5_of_diamonds", "6_of_diamonds", "7_of_diamonds", "8_of_diamonds", "9_of_diamonds", "10_of_diamonds", "jack_of_diamonds2", "queen_of_diamonds2", "king_of_diamonds2", "ace_of_spades2", "2_of_spades", "3_of_spades", "4_of_spades", "5_of_spades", "6_of_spades", "7_of_spades", "8_of_spades", "9_of_spades", "10_of_spades", "jack_of_spades2", "queen_of_spades2", "king_of_spades2", "ace_of_clubs", "2_of_clubs", "3_of_clubs", "4_of_clubs", "5_of_clubs", "6_of_clubs", "7_of_clubs", "8_of_clubs", "9_of_clubs", "10_of_clubs", "jack_of_clubs2", "queen_of_clubs2", "king_of_clubs2"]













