//
//  DiceRoller.swift
//  RNG
//
//  Created by Matthew on 1/7/22.
//

import SwiftUI

struct DiceRoller: View {
    @State private var startingImage = Image("DiceSideThree")
    
    func randomDice() {
        let randomInt = Int.random(in: 1...6)
        if randomInt == 1 {
            startingImage = Image("DiceSideOne")
        } else if randomInt == 2 {
            startingImage = Image("DiceSideTwo")
        } else if randomInt == 3 {
            startingImage = Image("DiceSideThree")
        } else if randomInt == 4 {
            startingImage = Image("DiceSideFour")
        } else if randomInt == 5 {
            startingImage = Image("DiceSideFive")
        } else if randomInt == 6 {
            startingImage = Image("DiceSideSix")
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            startingImage
                .resizable()
                .scaledToFit()
                .padding()
            Spacer()
            Spacer()
            Button {
                randomDice()
            } label: {
                Text("Roll Dice")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .font(.title)
                    .background(Color.seafoam)
                    .cornerRadius(40)
                    .shadow(radius: 3)
                    .frame(minWidth: 1, maxWidth: .infinity)
            }
            Spacer()
        }
    }
}

struct DiceRoller_Previews: PreviewProvider {
    static var previews: some View {
        DiceRoller()
    }
}
