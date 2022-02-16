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
    
    let howManyNumbersToAnimate = 50
    
    @State private var howLongToWaitToAnimate = 0.0
    
    @State private var isColorGray = false
    
    @State private var canNotPressButton = false
    
    @State private var animateNumber = false
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("\(randomNum)")
                .animation(nil)
                .font(.largeTitle)
                .foregroundColor(isColorGray ? .gray : .black)
                .scaleEffect(animateNumber ? 1.2 : 1.0)
                .animation(.interpolatingSpring(stiffness: 250, damping: 5, initialVelocity: 10), value: animateNumber)
                
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
                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                impactMed.impactOccurred()
                canNotPressButton = true
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
                    isColorGray = true
                    for _ in 0...howManyNumbersToAnimate {
                        DispatchQueue.main.asyncAfter(deadline: .now() + howLongToWaitToAnimate) {
                            randomNum = Int.random(in: minnTextField...maxxTextField)
                        }
                        howLongToWaitToAnimate += 0.017
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + howLongToWaitToAnimate) {
                        animate(howLongToWait: .now() + 0.1)
                        isColorGray = false
                        canNotPressButton = false
                    }
                    howLongToWaitToAnimate = 0.0
                }
            }
            .disabled(canNotPressButton)
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
    
    func animate(howLongToWait: DispatchTime) {
        animateNumber = true
        
        DispatchQueue.main.asyncAfter(deadline: howLongToWait + 0.1) {
            animateNumber = false
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

