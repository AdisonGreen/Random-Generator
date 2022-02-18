//
//  Card Picker.swift
//  RNG
//
//  Created by Matthew on 1/10/22.

import SwiftUI

struct Card_Picker: View {
    @ObservedObject var viewModel = CardViewModel()
    @State var includeJokers = false
    
    var body: some View {
        VStack {
            CardsView(viewModel: viewModel)
            
            Button(action: {
                viewModel.newCard()
                viewModel.shuffle()
                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                impactMed.impactOccurred()
            }) {
                if viewModel.numberVisible == 0 {
                    Text("Pick A Card")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.title)
                        .background(Color.seafoam)
                        .cornerRadius(40)
                        .shadow(radius: 3)
                        .frame(minWidth: 1, maxWidth: .infinity)
                    
                } else if viewModel.numberVisible == 1 {
                    Text("Pick A Card")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.title)
                        .background(Color.seafoam)
                        .cornerRadius(40)
                        .shadow(radius: 3)
                        .frame(minWidth: 1, maxWidth: .infinity)
                } else if viewModel.numberVisible != 1 {
                    Text("Shuffle Cards")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.title)
                        .background(Color.seafoam)
                        .cornerRadius(40)
                        .shadow(radius: 3)
                        .frame(minWidth: 1, maxWidth: .infinity)
                }
            }
            
            .frame(alignment: .bottom)
            Stepper("Number of Cards: \(viewModel.numberVisible)", value: $viewModel.numberVisible, in: 0...6)
                .font(.title3)
                .padding(20)
                .frame(alignment: .bottom)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            HStack {
                Toggle("Include Jokers?", isOn: $includeJokers)
                    .font(.title3)
                    .padding(EdgeInsets(top: -10, leading: 20, bottom: 10, trailing: 20))
                    .onChange(of: includeJokers) { value in
                        if includeJokers == true {
                            viewModel.addJokers()
                            viewModel.includeJokers = true
                        } else {
                            viewModel.removeJoker()
                            viewModel.includeJokers = false
                        }
                    }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Cards")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink(destination: MainPageSettings()) {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
    }
}

struct Card_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Card_Picker()
    }
}
