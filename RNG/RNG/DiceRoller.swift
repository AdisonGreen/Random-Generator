//
//  DiceRoller.swift
//  RNG
//
//  Created by Matthew on 1/7/22.
//

import SwiftUI

struct DiceRoller: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Dice 4")
                    .resizable()
                    .scaledToFit()
                    .position(x: 200, y: 200)
                    

                Button(action: {
                    print("Button Pressed")
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
