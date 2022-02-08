//
//  DiceView.swift
//  RNG
//
//  Created by Matthew on 2/8/22.
//
//NEED TO MAKE IT USE THIS INSTEAD OF USING "DICEROLLER"

import SwiftUI

struct DiceView: View {
    var startingImage = Image("DiceSideOne")
    var diceVisible = 1
    var body: some View {
        ZStack {
            if diceVisible == 1 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200, maximum: 200))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 2 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160, maximum: 160))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 3 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 4 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 5 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 6 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 7 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 8 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            if diceVisible == 9 {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))]) {
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                    startingImage
                        .resizable()
                        .scaledToFit()
                }
            }
            
            startingImage
                .resizable()
                .scaledToFit()
                .padding()
                .opacity(0.0)
        }
    }
    
    struct DiceView_Previews: PreviewProvider {
        static var previews: some View {
            DiceView()
        }
    }
}
