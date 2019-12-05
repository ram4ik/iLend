//
//  ContentView.swift
//  iLend
//
//  Created by ramil on 05.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var borrowed = true
    @State private var lend = false
    
    @State private var plusPressed = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        if !self.borrowed {
                            self.borrowed.toggle()
                            self.lend.toggle()
                        }
                    }) {
                        Text("Borrowed")
                            .padding(12)
                    }
                    .foregroundColor(.white)
                    .background(self.borrowed ? Color.blue.opacity(0.8) : Color.blue.opacity(0.4))
                    .clipShape(Capsule())
                    .shadow(radius: 15)
                    .padding([.leading, .bottom])
                    
                    Button(action: {
                        if !self.lend {
                            self.borrowed.toggle()
                            self.lend.toggle()
                        }
                    }) {
                        Text("Lend")
                            .padding(12)
                    }
                    .foregroundColor(.white)
                    .background(self.lend ? Color.blue.opacity(0.8) : Color.blue.opacity(0.4))
                    .clipShape(Capsule())
                    .shadow(radius: 15)
                    .padding(.bottom)
                   
                    Spacer()
                }
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    ZStack {
                        
                        Button(action: {
                            self.plusPressed.toggle()
                        }) {
                            if self.plusPressed {
                                Image(systemName: "star")
                            } else {
                                Image(systemName: "star")
                            }
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.8))
                        .clipShape(Circle())
                        .shadow(radius: self.plusPressed ? 15 : 0)
                        .padding()
                        .offset(y: self.plusPressed ? -170 : 0)
                        .animation(Animation.easeInOut(duration: 0.3))
                        
                        Button(action: {
                            self.plusPressed.toggle()
                        }) {
                            Image(systemName: "gamecontroller")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.8))
                        .clipShape(Circle())
                        .shadow(radius: self.plusPressed ? 15 : 0)
                        .padding()
                        .offset(y: self.plusPressed ? -120 : 0)
                        .animation(Animation.easeInOut(duration: 0.3))
                        
                        Button(action: {
                            self.plusPressed.toggle()
                        }) {
                            Image(systemName: "dollarsign.circle")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.8))
                        .clipShape(Circle())
                        .shadow(radius: self.plusPressed ? 15 : 0)
                        .padding()
                        .offset(x: self.plusPressed ? -50 : 0, y: self.plusPressed ? -50 : 0)
                        .animation(Animation.easeInOut(duration: 0.3))
                        
                        Button(action: {
                            self.plusPressed.toggle()
                        }) {
                            Image(systemName: "umbrella")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.8))
                        .clipShape(Circle())
                        .shadow(radius: self.plusPressed ? 15 : 0)
                        .padding()
                        .offset(x: self.plusPressed ? -70 : 0)
                        .animation(Animation.easeInOut(duration: 0.3))
                        
                        Button(action: {
                            self.plusPressed.toggle()
                        }) {
                            Image(systemName: "guitars")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.8))
                        .clipShape(Circle())
                        .shadow(radius: self.plusPressed ? 15 : 0)
                        .padding()
                        .offset(y: self.plusPressed ? -70 : 0)
                        .animation(Animation.easeInOut(duration: 0.3))
                        
                        Button(action: {
                            self.plusPressed.toggle()
                        }) {
                            Image(systemName: self.plusPressed ? "xmark" : "plus")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(self.plusPressed ? Color.blue.opacity(0.6) : Color.blue.opacity(0.8))
                        .clipShape(Circle())
                        .shadow(radius: self.plusPressed ? 15 : 25)
                        .padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
