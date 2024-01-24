//
//  Navigation.swift
//  Trading Cards
//
//  Created by Yiren LIU on 2024-01-22.
//

import SwiftUI

struct Navigation: View {
    
    let navigationPhoto: String
    let playerName: String
    let text: String
    
    var body: some View {
        HStack{
            Image(navigationPhoto)
                .resizable()
                .clipShape(.circle)
                .frame(width: 60,height: 60)
            VStack(alignment:.leading){
                Text(playerName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(text)
                    
            }
        }
    }
}

#Preview {
    Navigation(navigationPhoto: "photo", playerName: "Kelly Gruber", text: "The first Blue Jays to hit for the cycle.")
}
