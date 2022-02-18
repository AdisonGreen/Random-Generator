//
//  DiceRoller.swift
//  RNG
//
//  Created by Matthew on 1/7/22.
//

import SwiftUI

struct DiceRoller: View {
    @ObservedObject var viewModel = DiceViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                DiceView(viewModel: viewModel)
            }
            
            Text("Total: \(viewModel.total)")
            HStack {
                ForEach(DiceType.allCases) { dicetype in
                    Button {
                        viewModel.addDice(of: dicetype)
                    } label: {
                        Text(dicetype.rawValue)
                    }
                }
            }
            
            Button(action: {
                viewModel.reRollAllDice()
                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                impactMed.impactOccurred()
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
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Dice Roller")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink(destination: MainPageSettings()) {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
    }
}

struct DiceRoller_Previews: PreviewProvider {
    static var previews: some View {
        DiceRoller()
    }
}

