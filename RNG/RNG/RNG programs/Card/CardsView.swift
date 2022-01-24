//
//  CardsView.swift
//  RNG
//
//  Created by Matthew on 1/19/22.
//

import SwiftUI

struct CardsView: View {
    @ObservedObject var viewModel: CardViewModel
    var startingImage = Image("ace_of_hearts")
    var body: some View {
        ZStack {
            HStack {
                startingImage
                    .resizable()
                    .scaledToFit()
                    .opacity(0.0)
            }
            
            if viewModel.numberVisible == 1 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 192))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 2 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 3 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 4 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(viewModel.emptyArray) { card in
                        card.image
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 8))
                    }
                }
            } else if viewModel.numberVisible == 5 || (6 != 0) {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
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
