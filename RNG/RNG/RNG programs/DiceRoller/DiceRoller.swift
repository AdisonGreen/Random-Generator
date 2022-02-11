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
//            Text("Total: \(viewModel.total)")
            HStack {
                Button(action: {
                    viewModel.diceVisible += 1
                }) {
                    Text("4")
                }
                Button(action: {
                    viewModel.diceVisible += 1
                }) {
                    Text("6")
                }
                Button(action: {
                    viewModel.diceVisible += 1
                }) {
                    Text("8")
                }
                Button(action: {
                    viewModel.diceVisible += 1
                }) {
                    Text("10")
                }
                Button(action: {
                    viewModel.diceVisible += 1
                }) {
                    Text("12")
                }
            }

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
}

struct DiceRoller_Previews: PreviewProvider {
    static var previews: some View {
        DiceRoller()
    }
}

