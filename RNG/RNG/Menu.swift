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
                            NavigationLink(destination: Random_Number_Gen(), tag: 1, selection: $action) {
                            // RANDOM NUMBER GENERATOR BUTTON
                            Button {
                                print("random number generator")
                            } label: {
                                Image("HashtagRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            // DICE ROLLER GENERATOR
                            Button {
                                print("dice roller")
                            } label: {
                                Image("DiceRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            // RANDOM CARD PICKER GENERTOR
                            Button {
                                print("card picker")
                            } label: {
                                Image("CardRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                        }
                        HStack {
                            //Spinner
                            Button {
                                print("Wheel spinner")
                            } label: {
                                Image("WheelRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            //Magic 8Ball
                            Button {
                                print("yessss")
                            } label: {
                                Image("8BallRounded")
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
                                    .onTapGesture {
                                       self.action = 1
                                     }
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
                    //scrollview
                }
                .navigationTitle("Random generators")
                //navView
            }
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
            //tabView
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
