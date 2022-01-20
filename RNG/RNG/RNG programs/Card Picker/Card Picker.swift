//
//  Card Picker.swift
//  RNG
//
//  Created by Matthew on 1/10/22.

import SwiftUI

struct Card_Picker: View {
    @ObservedObject var viewModel = CardViewModel()
    
    var body: some View {
        NavigationView {
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
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 45, trailing: 0))
            }
            .navigationTitle("Cards")
        }
    }
}

struct Card_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Card_Picker()
    }
}
