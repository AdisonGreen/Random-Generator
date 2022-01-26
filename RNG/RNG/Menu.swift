//
//  Menu.swift
//  RNG
//
//  Created by speed Master on 1/4/22.
//

import SwiftUI

struct Menu: View {
    @State private var action: Int? = 0
    
    var body: some View {
            TabView {
                NavigationView {
                ScrollView {
                    VStack {
                        HStack {
                            VStack {
                                // RANDOM NUMBER GENERATOR BUTTON
                                NavigationLink(destination: Random_Number_Gen()) {
                                    Image("HashtagRounded")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(5)
                                        .navigationTitle("Random Number Generator")
                                }
                                Text("Random Number Generator")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                            VStack {
                                // DICE ROLLER GENERATOR
                                NavigationLink(destination: DiceRoller()) {
                                    Image("DiceRounded")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(5)
                                }
                                Text("Dice Roller \n")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                            VStack {
                                // RANDOM CARD PICKER GENERTOR
                                NavigationLink(destination: Card_Picker()) {
                                    Image("CardRounded")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(5)
                                }
                                Text("Card Picker \n")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        HStack {
                            VStack {
                                //Spinner
                                NavigationLink(destination: Random_Number_Gen()) {
                                    Image("WheelRounded")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(5)
                                }
                                Text("Spinner")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                            VStack {
                                //Magic 8Ball
                                NavigationLink(destination: EightBall()) {
                                    Image("8BallRounded")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(5)
                                }
                                Text("Magic EightBall")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                            VStack {
                                //Magic 8Ball
                                NavigationLink(destination: Random_Number_Gen()) {
                                    Image("ProjectorRounded")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(5)
                                }
                                Text("Advertisement")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        HStack {
                            Button {
                                print("yessss")
                            } label: {
                                Image("BlankRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Button {
                                print("yessss")
                            } label: {
                                Image("BlankRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Button {
                                print("yessss")
                            } label: {
                                Image("BlankRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                        }
                        HStack {
                            Button {
                                print("yessss")
                            } label: {
                                Image("BlankRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Button {
                                print("yessss")
                            } label: {
                                Image("BlankRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Button {
                                print("yessss")
                            } label: {
                                Image("BlankRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                        }
                    }
                } //scrollView Closing bracket
                .tabItem {
                    Image(systemName: "infinity.circle.fill")
                    Text("Generators")
                }
                //so long as this text is commented out this tab bar item wont show
                //Text("fancy generators")
                .tabItem {
                    Image(systemName: "gear.circle.fill")
                    Text("Fancy Generators")
                }
                Text("Lists")
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Lists")
                    }
                    .navigationTitle("Random Generators")
            } //tabView closing bracket
            .navigationTitle("Random Generators")
        } //nav view closing bracket
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
