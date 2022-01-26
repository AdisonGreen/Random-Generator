//
//  CardsView.swift
//  RNG
//
//  Created by Matthew on 1/19/22.
//

import SwiftUI

// ipod 7th gen 5, 6 cards mess it up

struct CardsView: View {
    @ObservedObject var viewModel: CardViewModel
    var startingImage = Image("ace_of_hearts")
    
    var body: some View {
        ZStack {
            startingImage
                .resizable()
                .scaledToFit()
                .opacity(0.0)
            
            
            if viewModel.numberVisible == 1 {
                LazyVGrid(columns: [GridItem(.flexible(minimum: 192, maximum: 192))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 2 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 150))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 3 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 140))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 4 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 140))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 5 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 110, maximum: 110))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 0, leading: 8, bottom: 40, trailing: 8))
                    }
                }
                
            } else if viewModel.numberVisible == 6 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 110, maximum: 110))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 0, leading: 8, bottom: 40, trailing: 8))
                    }
                }
            }
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView(viewModel: CardViewModel())
    }
}
