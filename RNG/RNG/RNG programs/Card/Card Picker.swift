//
//  Card Picker.swift
//  RNG
//
//  Created by Matthew on 1/10/22.

import SwiftUI

// The layout is weird on the following phones and it says whats wrong with it. 
// iphone 8 when its one card and 3, 4 cards
// iphone 8 plus when its one card and 3, 4 cards
// iphone 11 just when it is one card
// iphone 11 pro max when its one card
// iphone 12 pro max when its one card and 5 cards
// iphone 13 pro max when its one card and 5 cards
// iphone se - 2nd gen when its one card and 3, 4 cards
// ipod touch 7th gen when its one card and 3, 4 cards


struct Card_Picker: View {
    @ObservedObject var viewModel = CardViewModel()
    
    var body: some View {
            VStack {
                CardsView(viewModel: viewModel)
                
                Button(action: {
                    viewModel.newCard()
                    viewModel.shuffle()
                }) {
                    if viewModel.numberVisible == 0 {
                        Text("Pick A Card")
                            .font(.title3)
                    } else if viewModel.numberVisible == 1 {
                        Text("Pick A Card")
                            .font(.title3)
                    } else if viewModel.numberVisible != 1 {
                        Text("Shuffle Cards")
                            .font(.title3)
                    }
                }
                .frame(alignment: .bottom)
                Stepper("Number of Cards: \(viewModel.numberVisible)", value: $viewModel.numberVisible, in: 0...6)
                    .font(.title3)
                    .padding(20)
                    .frame(alignment: .bottom)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Cards")
    }
}

struct Card_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Card_Picker()
    }
}
