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
                    NavigationLink(destination: lebronJames){
                        Navigation(navigationPhoto: "photo2", playerName: "LeBron James", text: "“Most points in NBA history”")
                    }
                    NavigationLink(destination: michaelJordan){
                        Navigation(navigationPhoto: "photo3", playerName: "Michael Jordan", text: "“the Rookie of the Year”")
                    }
                    NavigationLink(destination: kobeBryant){
                        Navigation(navigationPhoto: "photo4", playerName: "Kobe Bryant", text: "“Perfect Conclusion”")
                    }
                    NavigationLink(destination: magicJohnson){
                        Navigation(navigationPhoto: "photo5", playerName: "Magic Johnson", text: "“Clutch Perfection”")
                    }
                    NavigationLink(destination: timDuncan){
                        Navigation(navigationPhoto: "photo6", playerName: "Tim Duncan", text: "“The hand of god”")
                    }
                }
                .navigationTitle("NBA Stars")
        }
        
    }
}

#Preview {
    ContentView()
}
