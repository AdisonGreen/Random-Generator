//
//  DiceRoller.swift
//  RNG
//
//  Created by Matthew on 1/7/22.
//

import SwiftUI

struct DiceRoller: View {
    @ObservedObject var viewModel = DiceViewModel()
    @State var total = 0

    var body: some View {
        VStack {
            ZStack {
                DiceView(viewModel: viewModel)
            }
            
            Text("Total: \(total)")
            //"8, 10, 12, 14" buttons above the Roll Dice Button
//            HStack {
//                Button(action: {
//                    diceView.random8Dice()
//                    diceView.diceVisible += 1
//                }) {
//                    Text("4")
//                }
//                Button(action: {
//                    diceView.random10Dice()
//                    diceView.diceVisible += 1
//                }) {
//                    Text("8")
//                }
//                Button(action: {
//                    diceView.random12Dice()
//                    diceView.diceVisible += 1
//                }) {
//                    Text("10")
//                }
//                Button(action: {
//                    diceView.random14Dice()
//                    diceView.diceVisible += 1
//                }) {
//                    Text("12")
//                }
//            }

            Button(action: {
                viewModel.newDice()
                viewModel.shuffle()
                //NEED TO MAKE IT SO THAT IT ROLL ANY OF THESE DEPENDING ON IF THEY ADDED IT OR NOT
            }) {
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
            .frame(alignment: .bottom)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Dice Roller")
    }
    func seeIf8IsAvalible() {
        
    }
}

struct DiceRoller_Previews: PreviewProvider {
    static var previews: some View {
        DiceRoller()
    }
}

