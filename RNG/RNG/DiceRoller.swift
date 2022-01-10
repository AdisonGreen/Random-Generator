//
//  DiceRoller.swift
//  RNG
//
//  Created by Matthew on 1/7/22.
//

import SwiftUI

struct DiceRoller: View {
    @State private var startingImage = Image("Dice 2")
    //need to make this so that it starts with a random dice not just dice 2
    
    var body: some View {
        NavigationView {
            VStack {
                startingImage
                    .resizable()
                    .scaledToFit()
                    .position(x: 200, y: 200)

                Button(action: {
                    let randomInt = Int.random(in: 1...6)
                    if randomInt == 1 {
                        startingImage = Image("Dice 1")
                    } else if randomInt == 2 {
                        startingImage = Image("Dice 2")
                    } else if randomInt == 3 {
                        startingImage = Image("Dice 3")
                    } else if randomInt == 4 {
                        startingImage = Image("Dice 4")
                    } else if randomInt == 5 {
                        startingImage = Image("Dice 5")
                    } else if randomInt == 6 {
                        startingImage = Image("Dice 6")
                    }
                }) {
                    Text("Roll Dice")
                        .font(.title3)
                }
                .position(x: 200, y: 220)
            }

            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Dice Roller").font(.title3)
                    }
                }
            }
        }
    }
}

struct DiceRoller_Previews: PreviewProvider {
    static var previews: some View {
        DiceRoller()
    }
}
