//
//  Card Picker.swift
//  RNG
//
//  Created by Matthew on 1/10/22.
//

import SwiftUI

struct Card_Picker: View {
    @State private var startingImage = Image("2_of_clubs")
    //need to make this so that it starts with a random card not just 2_of_clubs
    
    var body: some View {
        NavigationView {
            VStack {
                startingImage
                    .resizable()
                    .scaledToFit()
                    .position(x: 200, y: 200)
                
                Button(action: {
                    let randomInt = Int.random(in: 1...52)
                    print(randomInt)
                    //MARK: Hearts
                    if randomInt == 1 {
                        startingImage = Image("ace_of_hearts")
                    } else if randomInt == 2 {
                        startingImage = Image("2_of_hearts")
                    } else if randomInt == 3 {
                        startingImage = Image("3_of_hearts")
                    } else if randomInt == 4 {
                        startingImage = Image("4_of_hearts")
                    } else if randomInt == 5 {
                        startingImage = Image("5_of_hearts")
                    } else if randomInt == 6 {
                        startingImage = Image("6_of_hearts")
                    } else if randomInt == 7 {
                        startingImage = Image("7_of_hearts")
                    } else if randomInt == 8 {
                        startingImage = Image("8_of_hearts")
                    } else if randomInt == 9 {
                        startingImage = Image("9_of_hearts")
                    } else if randomInt == 10 {
                        startingImage = Image("10_of_hearts")
                    } else if randomInt == 11 {
                        startingImage = Image("jack_of_hearts2")
                    } else if randomInt == 12 {
                        startingImage = Image("queen_of_hearts2")
                    } else if randomInt == 13 {
                        startingImage = Image("king_of_hearts2")
                    //MARK: Diamonds
                    } else if randomInt == 14 {
                        startingImage = Image("ace_of_diamonds")
                    } else if randomInt == 15 {
                        startingImage = Image("2_of_diamonds")
                    } else if randomInt == 16 {
                        startingImage = Image("3_of_diamonds")
                    } else if randomInt == 17 {
                        startingImage = Image("4_of_diamonds")
                    } else if randomInt == 18 {
                        startingImage = Image("5_of_diamonds")
                    } else if randomInt == 19 {
                        startingImage = Image("6_of_diamonds")
                    } else if randomInt == 20 {
                        startingImage = Image("7_of_diamonds")
                    } else if randomInt == 21 {
                        startingImage = Image("8_of_diamonds")
                    } else if randomInt == 22 {
                        startingImage = Image("9_of_diamonds")
                    } else if randomInt == 23 {
                        startingImage = Image("10_of_diamonds")
                    } else if randomInt == 24 {
                        startingImage = Image("jack_of_diamonds2")
                    } else if randomInt == 25 {
                        startingImage = Image("queen_of_diamonds2")
                    } else if randomInt == 26 {
                        startingImage = Image("king_of_diamonds2")
                    } else if randomInt == 27 {
                    //MARK: Spades
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 28 {
                        startingImage = Image("2_of_spades")
                    } else if randomInt == 29 {
                        startingImage = Image("3_of_spades")
                    } else if randomInt == 30 {
                        startingImage = Image("4_of_spades")
                    } else if randomInt == 31 {
                        startingImage = Image("5_of_spades")
                    } else if randomInt == 32 {
                        startingImage = Image("6_of_spades")
                    } else if randomInt == 33 {
                        startingImage = Image("7_of_spades")
                    } else if randomInt == 34 {
                        startingImage = Image("8_of_spades")
                    } else if randomInt == 35 {
                        startingImage = Image("9_of_spades")
                    } else if randomInt == 36 {
                        startingImage = Image("10_of_spades")
                    } else if randomInt == 37 {
                        startingImage = Image("jack_of_spades2")
                    } else if randomInt == 38 {
                        startingImage = Image("queen_of_spades2")
                    } else if randomInt == 39 {
                        startingImage = Image("king_of_spades2")
                    } else if randomInt == 40 {
                    //MARK: Clubs
                        startingImage = Image("ace_of_clubs")
                    } else if randomInt == 41 {
                        startingImage = Image("2_of_clubs")
                    } else if randomInt == 42 {
                        startingImage = Image("3_of_clubs")
                    } else if randomInt == 43 {
                        startingImage = Image("4_of_clubs")
                    } else if randomInt == 44 {
                        startingImage = Image("5_of_clubs")
                    } else if randomInt == 45 {
                        startingImage = Image("6_of_clubs")
                    } else if randomInt == 46 {
                        startingImage = Image("7_of_clubs")
                    } else if randomInt == 47 {
                        startingImage = Image("8_of_clubs")
                    } else if randomInt == 48 {
                        startingImage = Image("9_of_clubs")
                    } else if randomInt == 49 {
                        startingImage = Image("10_of_clubs")
                    } else if randomInt == 50 {
                        startingImage = Image("jack_of_clubs2")
                    } else if randomInt == 51 {
                        startingImage = Image("queen_of_clubs2")
                    } else if randomInt == 52 {
                        startingImage = Image("king_of_clubs2")
                    //MARK: Jokers
                    } else if randomInt == 53 {
                        startingImage = Image("black_joker")
                    } else if randomInt == 54 {
                        startingImage = Image("red_joker")
                    }
                }) {
                    Text("Pick A Card")
                        .font(.title3)
                }
                .position(x: 200, y: 220)
            }

            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Cards").font(.title3)
                    }
                }
            }
        }
    }
}
struct Card_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Card_Picker()
    }
}
