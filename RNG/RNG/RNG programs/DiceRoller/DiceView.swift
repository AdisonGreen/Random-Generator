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
        ZStack {
            startingImage
                .resizable()
                .scaledToFit()
                .opacity(0.0)
            
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: gridItemSize, maximum: gridItemSize))]) {
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



struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(viewModel: DiceViewModel())
    }
}

