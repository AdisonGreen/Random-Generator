//
//  DiceRoller.swift
//  RNG
//
//  Created by Matthew on 1/7/22.
//

import SwiftUI

struct DiceRoller: View {
    @State var diceView = DiceView()
    @State var startingImage = Image("DiceSide3")
    @State var total = 0
    @State var diceVisible = 1
    
    var body: some View {
        VStack {
            ZStack {
                if diceView.diceVisible == 1 {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 250, maximum: 250))]) {
                        startingImage
                            .resizable()
                            .scaledToFit()
                    }
                }
                if diceView.diceVisible == 2 {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 170, maximum: 170))]) {
                        startingImage
                            .resizable()
                            .scaledToFit()
                        startingImage
                            .resizable()
                            .scaledToFit()
                    }
                }
                if diceView.diceVisible == 3 {
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
                if diceView.diceVisible == 4 {
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
                if diceView.diceVisible == 5 {
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
                if diceView.diceVisible == 6 {
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
                if diceView.diceVisible == 7 {
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
                if diceView.diceVisible == 8 {
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
                if diceView.diceVisible == 9 {
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
            
            Text("Total: \(total)")
            HStack {
                Button(action: {
                    random8Dice()
                    diceView.diceVisible += 1
                }) {
                    Text("8")
                }
                Button(action: {
                    random10Dice()
                    diceView.diceVisible += 1
                }) {
                    Text("10")
                }
                Button(action: {
                    random12Dice()
                    diceView.diceVisible += 1
                }) {
                    Text("12")
                }
                Button(action: {
                    random14Dice()
                    diceView.diceVisible += 1
                }) {
                    Text("14")
                }
            }
            
            Button(action: {
                random6Sided()
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

