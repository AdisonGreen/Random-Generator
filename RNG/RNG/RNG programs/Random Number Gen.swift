//
//  Random Number Gen.swift
//  RNG
//
//  Created by Adison Green on 1/7/22.
//

import SwiftUI

struct Random_Number_Gen: View {
    @State private var minTextField: Int? = 1
    @State private var maxTextField: Int? = 100
    
    @State private var randomNum = 1
    
    @State private var minMoreThanMax = false
    @State private var minTextFieldIsEmpty = false
    @State private var maxTextFieldIsEmpty = false
    
    @FocusState private var amountIsFocused: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("\(randomNum)")
                .font(.largeTitle)
            Spacer()
            Spacer()
            
            VStack {
                HStack(alignment: .center) {
                    Spacer()
                    Text("Min")
                    TextField("Minimum number", value: $minTextField, format: .number)
                        .keyboardType(.numberPad)
                        .focused($amountIsFocused)
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("Max")
                    TextField("Maximum number", value: $maxTextField, format: .number)
                        .keyboardType(.numberPad)
                        .focused($amountIsFocused)
                }
            }
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button("Generate") {
                guard let minTextField = minTextField else {
                    minTextFieldIsEmpty.toggle()
                    return
                }
                
                guard let maxTextField = maxTextField else {
                    maxTextFieldIsEmpty.toggle()
                    return
                }
                
                if minTextField > maxTextField {
                    minMoreThanMax.toggle()
                } else {
                    randomNum = Int.random(in: minTextField...maxTextField)
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
        
        .ignoresSafeArea()
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                
                Button("Done") {
                    amountIsFocused = false
                }
            }
        }
    }
}



struct Random_Number_Gen_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Random_Number_Gen()
        }
    }
}

