//
//  ContentView.swift
//  Shared
//
//  Created by Brian Moyou on 17.10.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card6"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    // Updates the cards and the score
    func updateUI() {
        let playerRandom = Int.random(in: 2...14)
        
        let cpuRandom = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerRandom)
        cpuCard = "card" + String(cpuRandom)

        if playerRandom < cpuRandom {
            cpuScore += 1
        } else if playerRandom > cpuRandom {
            playerScore += 1
        }
    }
    
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()

                Image("logo")
                
                Spacer()

                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    updateUI()
                }
, label: {
                    Image("dealbutton")

                })
                
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()

            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
