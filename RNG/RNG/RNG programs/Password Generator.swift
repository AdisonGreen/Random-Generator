//
//  Password Generator.swift
//  RNG
//
//  Created by speed Master on 2/3/22.
//

import SwiftUI

struct Password_Generator: View {
    @State var SliderValue: Double = 4
    @State var passwordString: String = ""
    
    @ObservedObject var hapticViewModel = HapticFeedback()
    
    @State var lowercaseToggle: Bool = true
    @State var uppercaseToggle: Bool = true
    @State var symbolToggle: Bool = true
    @State var numberToggle: Bool = true
    
    enum CharacterGenerated: CaseIterable {
        case letterLowercase
        case letterUppercase
        case symbol
        case Number
    }
    
    func generatePassword() {
        var sliderValueZero: Double = 1
        
        let Alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        let symbols = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "`", "~", "_", "-", "+", "=", "<", ",", ">", ".", "{", "}", "[", "]"]
        let numerics = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        passwordString = ""
        repeat {
            let randomItem = CharacterGenerated.allCases.randomElement()!
            
            switch randomItem {
            case CharacterGenerated.letterLowercase:
                if lowercaseToggle == true {
                    if let randomLetterLowercase = Alphabet.randomElement() {
                        passwordString.append(randomLetterLowercase)
                    }
                }else { fallthrough }
            case CharacterGenerated.letterUppercase:
                if uppercaseToggle == true {
                    if let randomLetterUpperCase = Alphabet.randomElement() {
                        let uppercased = randomLetterUpperCase.uppercased()
                        passwordString.append(uppercased)
                    }
                }else { fallthrough }
            case CharacterGenerated.symbol:
                if symbolToggle == true {
                    if let randomSymbol = symbols.randomElement() {
                        passwordString.append(randomSymbol)
                    }
                }else { fallthrough }
            case CharacterGenerated.Number:
                if numberToggle == true {
                    if let randomNumber = numerics.randomElement() {
                        passwordString.append(randomNumber)
                    }
                } else { fallthrough }
            default:
                print("welp")
            }
            
            sliderValueZero += 1
        } while sliderValueZero <= SliderValue
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: $lowercaseToggle) {
                Text("Lowercase")
            }
            .padding(.horizontal)
            Toggle(isOn: $uppercaseToggle) {
                Text("Uppercase")
            }
            .padding(.horizontal)
            Toggle(isOn: $symbolToggle) {
                Text("Symbols")
            }
            .padding(.horizontal)
            Toggle(isOn: $numberToggle) {
                Text("Numbers")
            }
            .padding(.horizontal)
            Spacer()
            Text(passwordString)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            
            VStack {
                Slider(value: $SliderValue, in: 1...100, step: 1)
                    .accentColor(.green)
                    .padding()
                Text("Current Slider Value: \(Int(SliderValue))")
                
                Button {
                    generatePassword()
                    if hapticViewModel.useHapticFeedback {
                        let impactMed = UIImpactFeedbackGenerator(style: .medium)
                        impactMed.impactOccurred()
                    }
                } label: {
                    Text("Generate")
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
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Password generator")
    }
}

struct Password_Generator_Previews: PreviewProvider {
    static var previews: some View {
        Password_Generator()
    }
}
