//
//  DiceRoller.swift
//  RNG
//
//  Created by Matthew on 1/7/22.
//

import SwiftUI

struct DiceRoller: View {
    @State var startingImage = Image("DiceSide3")
    @State var total = 0
    @State var buttonPressed = false

    var body: some View {
        VStack {
            startingImage
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("Total: \(total)")
            HStack {
                Button {
                    random8Dice()
                    if buttonPressed == false {
                        buttonPressed = true
                    }
                } label: {
                    Text("8")
                }
                Button {
                    random10Dice()
                } label: {
                    Text("10")
                }
                Button {
                    random12Dice()
                } label: {
                    Text("12")
                }
                Button {
                    random14Dice()
                } label: {
                    Text("14")
                }
            }
            
            Button {
                random6Sided()
            } label: {
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
            .frame(alignment: .bottom)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Dice Roller")
    }
    func random6Sided() {
        let randomInt = Int.random(in: 1...6)
        if randomInt == 1 {
            startingImage = Image("DiceSideOne")
            total = 1
        } else if randomInt == 2 {
            startingImage = Image("DiceSideTwo")
            total = 2
        } else if randomInt == 3 {
            startingImage = Image("DiceSideThree")
            total = 3
        } else if randomInt == 4 {
            startingImage = Image("DiceSideFour")
            total = 4
        } else if randomInt == 5 {
            startingImage = Image("DiceSideFive")
            total = 5
        } else if randomInt == 6 {
            startingImage = Image("DiceSideSix")
            total = 6
        }
    }
    
    func random8Dice() {
        let randomInt = Int.random(in: 1...8)
        if randomInt == 1 {
            startingImage = Image("DiceSideOne")
            total = 1
        } else if randomInt == 2 {
            startingImage = Image("DiceSideTwo")
            total = 2
        } else if randomInt == 3 {
            startingImage = Image("DiceSideThree")
            total = 3
        } else if randomInt == 4 {
            startingImage = Image("DiceSideFour")
            total = 4
        } else if randomInt == 5 {
            startingImage = Image("DiceSideFive")
            total = 5
        } else if randomInt == 6 {
            startingImage = Image("DiceSideSix")
            total = 6
        } else if randomInt == 7 {
            startingImage = Image("")
            total = 7
        } else if randomInt == 8 {
            startingImage = Image("")
            total = 8
        }
    }
    
    func random10Dice() {
        let randomInt = Int.random(in: 1...10)
        if randomInt == 1 {
            startingImage = Image("DiceSideOne")
            total = 1
        } else if randomInt == 2 {
            startingImage = Image("DiceSideTwo")
            total = 2
        } else if randomInt == 3 {
            startingImage = Image("DiceSideThree")
            total = 3
        } else if randomInt == 4 {
            startingImage = Image("DiceSideFour")
            total = 4
        } else if randomInt == 5 {
            startingImage = Image("DiceSideFive")
            total = 5
        } else if randomInt == 6 {
            startingImage = Image("DiceSideSix")
            total = 6
        } else if randomInt == 7 {
            startingImage = Image("")
            total = 7
        } else if randomInt == 8 {
            startingImage = Image("")
            total = 8
        } else if randomInt == 9 {
            startingImage = Image("")
            total = 9
        } else if randomInt == 10 {
            startingImage = Image("")
            total = 10
        }
    }
    
    func random12Dice() {
        let randomInt = Int.random(in: 1...12)
        if randomInt == 1 {
            startingImage = Image("DiceSideOne")
            total = 1
        } else if randomInt == 2 {
            startingImage = Image("DiceSideTwo")
            total = 2
        } else if randomInt == 3 {
            startingImage = Image("DiceSideThree")
            total = 3
        } else if randomInt == 4 {
            startingImage = Image("DiceSideFour")
            total = 4
        } else if randomInt == 5 {
            startingImage = Image("DiceSideFive")
            total = 5
        } else if randomInt == 6 {
            startingImage = Image("DiceSideSix")
            total = 6
        } else if randomInt == 7 {
            startingImage = Image("")
            total = 7
        } else if randomInt == 8 {
            startingImage = Image("")
            total = 8
        } else if randomInt == 9 {
            startingImage = Image("")
            total = 9
        } else if randomInt == 10 {
            startingImage = Image("")
            total = 10
        } else if randomInt == 11 {
            startingImage = Image("")
            total = 11
        } else if randomInt == 12 {
            startingImage = Image("")
            total = 12
        }
    }
    
    func random14Dice() {
        let randomInt = Int.random(in: 1...14)
        if randomInt == 1 {
            startingImage = Image("DiceSideOne")
            total = 1
        } else if randomInt == 2 {
            startingImage = Image("DiceSideTwo")
            total = 2
        } else if randomInt == 3 {
            startingImage = Image("DiceSideThree")
            total = 3
        } else if randomInt == 4 {
            startingImage = Image("DiceSideFour")
            total = 4
        } else if randomInt == 5 {
            startingImage = Image("DiceSideFive")
            total = 5
        } else if randomInt == 6 {
            startingImage = Image("DiceSideSix")
            total = 6
        } else if randomInt == 7 {
            startingImage = Image("")
            total = 7
        } else if randomInt == 8 {
            startingImage = Image("")
            total = 8
        } else if randomInt == 9 {
            startingImage = Image("")
            total = 9
        } else if randomInt == 10 {
            startingImage = Image("")
            total = 10
        } else if randomInt == 11 {
            startingImage = Image("")
            total = 11
        } else if randomInt == 12 {
            startingImage = Image("")
            total = 12
        }  else if randomInt == 13 {
            startingImage = Image("")
            total = 13
        } else if randomInt == 13 {
            startingImage = Image("")
            total = 13
        }
    }
}

struct DiceRoller_Previews: PreviewProvider {
    static var previews: some View {
        DiceRoller()
    }
}

