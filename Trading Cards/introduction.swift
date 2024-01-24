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
    let logoName: String
    let data1Text: String
    let data2Text: String
    let data3Text: String
    let data1: Int
    let data2: Int
    let data3: String
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
                        .frame(height:50)
                        
                    
                    Text(playerName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.trailing,150)
                    
                       
                }
                Spacer()
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
                           
                        ScrollView(.vertical) {
                            LazyVStack(alignment:.leading){
                                Text("Career stats")
                                    .bold()
                                    .padding(.top,20)
                                HStack{
                                    VStack(alignment:.leading) {
                                        Text(data1Text)
                                        Text("\(data1)")
                                    }
                                    VStack {
                                        Text(data2Text)
                                            .padding(.horizontal)
                                        Text("\(data2)")
                                    }
                                    VStack(alignment:.leading) {
                                        Text(data3Text)
                                        Text("\(data3)")
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
                    }
                    .padding(.top,15)
              
            }
        }
        
        
    }
}

let kellyGruber =  introduction(playerName: "Kelly Gruber", imageName: "photo", logoName: "logo", data1Text: "Home Runs", data2Text: "RBI", data3Text: "Batting average", data1: 117, data2: 443,  data3: ".259", famousPlay: "On April 16, 1989, Gruber was the first Blue Jay in history to hit for the cycle when he got four hits in six at-bats with six RBI and four runs scored. His cycle occured in the following order: home run, double, triple, and single.")

let lebronJames = introduction(playerName: "xxx", imageName: "photo2", logoName: "logo2", data1Text: "xxx", data2Text: "xxx", data3Text: "xxx", data1: 1, data2: 1, data3: "xxx", famousPlay: "xxx")
#Preview {
    lebronJames
}

