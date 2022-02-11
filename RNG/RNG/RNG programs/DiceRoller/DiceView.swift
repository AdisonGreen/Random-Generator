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
    var startingImage = Image("DiceSideOne")
    
    var body: some View {
        ZStack {
            startingImage
                .resizable()
                .scaledToFit()
                .opacity(0.0)
            
            if viewModel.diceVisible == 1 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200, maximum: 200))]) {
                    ForEach(viewModel.diceArray) { dice in
                        dice.image1
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                }
            } else if viewModel.diceVisible == 2 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160, maximum: 160))]) {
                    ForEach(viewModel.diceArray) { dice in
                        dice.image1
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                }
            } else {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    ForEach(viewModel.diceArray) { dice in
                        dice.image1
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                }
            }
        }
    }
}



struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(viewModel: DiceViewModel())
    }
}

