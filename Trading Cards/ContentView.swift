//
//  ContentView.swift
//  Trading Cards
//
//  Created by Yiren LIU on 2024-01-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
                
                List{
                    NavigationLink(destination: kellyGruber){
                        Navigation(navigationPhoto: "photo", playerName: "Kelly Gruber", text: "The first Blue Jays to hit for the cycle.")
                    }
                }
                .navigationTitle("Blue Jays of My Youth")
        }
        
    }
}

#Preview {
    ContentView()
}
