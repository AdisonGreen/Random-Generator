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
                guard let minnTextField = minTextField else {
                    minTextField = 1
                    return
                }
                
                guard let maxxTextField = maxTextField else {
                    maxTextField = 100
                    return
                }
                
                if minnTextField > maxxTextField {
                    minTextField = maxTextField
                } else {
                    randomNum = Int.random(in: minnTextField...maxxTextField)
                }
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
            .font(.title)
            .background(Color.seafoam)
            .cornerRadius(40)
            .shadow(radius: 3)
            .frame(minWidth: 1, maxWidth: .infinity)
            Spacer()
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                
                Button("Done") {
                    amountIsFocused = false
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Random Number Generator")
    }
}



struct Random_Number_Gen_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Random_Number_Gen()
        }
    }
}

