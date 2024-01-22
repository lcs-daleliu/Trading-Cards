//
//  introduction.swift
//  Trading Cards
//
//  Created by Yiren LIU on 2024-01-21.
//

import SwiftUI


struct introduction: View {
    
    let playerName: String
    let imageName: String
    let homeRuns: Int
    let RBI: Int
    let battingAverage: String
    let famousPlay: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.lightBlue)
            VStack{
                ZStack {
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(.white)
                        .frame(height:90)
                    Text(playerName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.trailing,150)
                        .padding(.top,40)
                }
                  
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 365)
                        .padding(.horizontal,27)
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(height: 345)
                        .padding(.horizontal,37)
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 325)
                        .padding(.horizontal,47)
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 305, height: 305)
                    ZStack{
                        HStack{
                            Spacer()
                            VStack{
                                Image("logo")
                                    .resizable()
                                    .frame(width:210,height: 140)
                                    .padding(.leading,150)
                                    .padding(.top,200)
                            }
                        }
                    }
                }
                ZStack{
                    Rectangle()
                        .ignoresSafeArea()
                        .padding(.horizontal,27)
                        .foregroundColor(.white)
                       
                    VStack(alignment:.leading){
                        Text("Career stats")
                            .bold()
                        HStack{
                            VStack(alignment:.leading) {
                                Text("Home runs")
                                Text("\(homeRuns)")
                            }
                            VStack {
                                Text("RBI")
                                    .padding(.horizontal)
                                Text("\(RBI)")
                            }
                            VStack(alignment:.leading) {
                                Text("Batting average")
                                Text(battingAverage)
                            }
                        }
                        .padding(.top,5)
                        Text("Most famous play")
                            .bold()
                            .padding(.top,5)
                        Text(famousPlay)
                            .offset(y:10)
                           
                    }
                    .padding(.horizontal,40)
                }
                .padding(.top,15)
            }
        }
        
        
    }
}

#Preview {
    introduction(playerName: "Kelly Gruber", imageName: "photo", homeRuns: 117, RBI: 443, battingAverage: ".259", famousPlay: "On April 16, 1989, Gruber was the first Blue Jay in history to hit for the cycle when he got four hits in six at-bats with six RBI and four runs scored. His cycle occured in the following order: home run, double, triple, and single.")
}
