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
                    if randomInt == 1 {
                        startingImage = Image("ace_of_hearts")
                    } else if randomInt == 2 {
                        startingImage = Image("ace_of_diamonds")
                    } else if randomInt == 3 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 4 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 5 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 6 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 7 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 8 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 9 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 10 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 11 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 12 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 13 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 14 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 15 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 16 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 17 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 18 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 19 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 20 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 21 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 22 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 23 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 24 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 25 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 26 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 27 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 28 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 29 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 30 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 31 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 32 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 33 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 34 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 35 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 36 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 37 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 38 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 39 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 40 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 41 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 42 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 43 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 44 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 45 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 46 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 47 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 48 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 49 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 50 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 51 {
                        startingImage = Image("ace_of_spades2")
                    } else if randomInt == 52 {
                        startingImage = Image("ace_of_spades2")
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
