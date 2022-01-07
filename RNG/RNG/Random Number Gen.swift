//
//  Random Number Gen.swift
//  RNG
//
//  Created by Adison Green on 1/7/22.
//

import SwiftUI

struct Random_Number_Gen: View {
    @State private var minTextField = "1"
    @State private var maxTextField = "100"
    
    @State private var randomNum = 1
    
    @State private var minMoreThanMax = false
    @State private var minTextFieldIsEmpty = false
    @State private var maxTextFieldIsEmpty = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(randomNum)")
                .frame(width: 200, height: 200)
                .font(.largeTitle)
            Spacer()
                HStack {
                    Text("Min")
                    TextField("Minimum number", text: $minTextField)
                    Text("Max")
                    TextField("Maximum number", text: $maxTextField)
                }
            Button("Generate") {
                let userMinNum = Int(minTextField)
                let userMaxNum = Int(maxTextField)
                
                guard let userMinNum = userMinNum else {
                    minTextFieldIsEmpty.toggle()
                    return
                }
                
                guard let userMaxNum = userMaxNum else {
                    maxTextFieldIsEmpty.toggle()
                    return
                }
                
                if userMinNum > userMaxNum {
                    minMoreThanMax.toggle()
                } else {
                    randomNum = Int.random(in: userMinNum...userMaxNum)
                }
            }
            .frame(width: 300, height: 40)
            .foregroundColor(.mint)
            .background(.black)
            Spacer()
        }
        .alert("The minimum must be lower than the maximum", isPresented: $minMoreThanMax) {
            Button("Ok", role: .cancel) { }
        }
        .alert("You must have a minimum", isPresented: $minTextFieldIsEmpty) {
            Button("Ok", role: .cancel) { }
        }
        .alert("You must have a maximum", isPresented: $maxTextFieldIsEmpty) {
            Button("Ok", role: .cancel) { }
        }
        .background()
        .ignoresSafeArea()
    }
}

struct Random_Number_Gen_Previews: PreviewProvider {
    static var previews: some View {
        Random_Number_Gen()
        Group {
            Random_Number_Gen()
        }
    }
}

