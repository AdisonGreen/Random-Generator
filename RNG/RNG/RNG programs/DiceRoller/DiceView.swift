//
//  DiceView.swift
//  RNG
//
//  Created by Matthew on 2/8/22.
//
//NEED TO MAKE IT USE THIS INSTEAD OF USING "DICEROLLER"

import SwiftUI

struct DiceView: View {
    @ObservedObject var viewModel: DiceViewModel
    var startingImage = Image("DotDiceSixSideOne")
    var gridItemSize: CGFloat {
        if viewModel.diceVisible == 1 {
            return 200
        } else if viewModel.diceVisible == 2 {
            return 160
        } else {
            return 100
        }
    }
    
    var body: some View {
        //constrant assist
        ZStack {
            startingImage
                .resizable()
                .scaledToFit()
                .opacity(0.0)
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: gridItemSize, maximum: gridItemSize))]) {
                ForEach(viewModel.diceArray) { dice in
                    Button {
                        if let indexOfDice = viewModel.diceArray.firstIndex(of: dice) {
                            deleteDice(at: indexOfDice)
                        }
                    } label: {
                        dice.image1
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                }
            }
        }
    }
    
    func deleteDice(at index: Int) {
        let dice = viewModel.diceArray[index]
        let nameOfDice = dice.name

        if let diceIndex = dice.type.diceOptionNames.firstIndex(of: nameOfDice) {
            viewModel.diceArray.remove(at: index)
            viewModel.total -= diceIndex + 1
        }
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(viewModel: DiceViewModel())
    }
}

