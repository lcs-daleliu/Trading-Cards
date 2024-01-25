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
    let data1: String
    let data2: String
    let data3: String
    let data4: String
    let famousPlay: String
    
    let yellowToPurple = Gradient(colors: [Color.yellow, Color.purple, Color.clear])
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: yellowToPurple, startPoint: .leading, endPoint: .trailing)
                    .ignoresSafeArea()
            VStack{
                ZStack {
                    LinearGradient(gradient: yellowToPurple, startPoint: .leading, endPoint: .trailing)
                            .ignoresSafeArea()
                            .frame(height:50)
                            .opacity(0.9)

                    Text(playerName)
                        .fontWeight(.bold)
                        .font(.custom("Chalkduster",size:30,relativeTo: .body))
                        .foregroundStyle(
                                LinearGradient(
                                            gradient: Gradient(colors: [Color.pink, Color.black]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                            
                                    )
                   )
                      
                }
                Spacer()
                ZStack {
                   
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 345, height: 345)
                    ZStack{
                        HStack{
                            Spacer()
                            VStack{
                                Image("logo2")
                                    .resizable()
                                    .frame(width:190,height: 140)
                                    .padding(.top,200)
                            }
                        }
                    }
                }
                 
                           
                        ScrollView(.vertical) {
                            LazyVStack(alignment:.leading){
                                Text("Career stats")
                                    .bold()
                                    .padding(.top,20)
                                    .font(.custom("Chalkduster",size:15,relativeTo: .body))
                                    
                                HStack{
                                    VStack {
                                        Text("PPG")
                                            .padding(.horizontal,5)
                                     
                                        Text("\(data1)")
                                    }
                                    VStack {
                                        Text("RPG")
                                            .padding(.horizontal,5)
                                        Text("\(data2)")
                                    }
                                    VStack {
                                        Text("APG")
                                            .padding(.horizontal,5)
                                        Text("\(data3)")
                                    }
                                    VStack {
                                        Text("TS%")
                                            .padding(.horizontal,5)
                                        Text("\(data4)")
                                    }
                                }
                                .padding(.top,5)
                                Text("Most famous play")
                                    .bold()
                                    .padding(.top,5)
                                    .font(.custom("Chalkduster",size:15,relativeTo: .body))
                                Text(famousPlay)
                                    .offset(y:10)
                                   
                            }
                            .padding(.horizontal,15)
                        }
                       
                    
                    
              
            }
        }
        
        
    }
}


let lebronJames = introduction(playerName: "Lebron James", imageName: "photo2", data1: "24.8", data2: "7.2", data3: "7.4", data4: "61.2", famousPlay: "“The block”:  a crucial defensive play that LeBron James made during Game 7 of the 2016 NBA Finals between the Cleveland Cavaliers and the Golden State Warriors. In the final minutes of the game, with the score tied, LeBron chased down Warriors' guard Andre Iguodala in transition and blocked his layup attempt, preventing what seemed like a certain score. This block played a significant role in the Cavaliers winning the game and securing their first NBA Championship in franchise history.This play is often regarded as one of the defining moments of LeBron James' career and is etched in NBA history as one of the greatest defensive plays in a crucial championship game.")

let michaelJordan = introduction(playerName: "Micheal Jordan", imageName: "photo3", data1: "30.1", data2: "6.2", data3: "5.3", data4: "56.9", famousPlay: "“The Shot”: during Game 5 of the first-round playoff series between the Chicago Bulls and the Cleveland Cavaliers on May 7, 1989, With the game tied at 100 and just three seconds left on the clock, Michael Jordan received an inbounds pass. He then made a jump shot at the foul line over Craig Ehlo of the Cavaliers, securing a 101-100 victory for the Bulls. This shot is memorable not only for its clutch nature but also for the image of Jordan jumping in the air with his fist raised as the ball went through the net. It is considered one of the defining moments of Michael Jordan's career and is often replayed in highlight reels, showcasing his ability to perform under pressure and deliver in critical moments.")

let kobeBryant = introduction(playerName: "Kobe Bryant", imageName: "photo4", data1: "25.0", data2: "5.2", data3: "4.7", data4: "55.0", famousPlay: "“The Kobe special”: The final game he played in the NBA. On April 13, 2016, Kobe Bryant played his last game against the Utah Jazz at the Staples Center in Los Angeles. In that game, Kobe delivered a remarkable performance, scoring 60 points. It was a fitting farewell for one of the greatest basketball players of all time. The Lakers won the game 101-96, and Kobe's performance was celebrated as one of the most memorable farewells in sports history. The game showcased his scoring prowess, competitiveness, and the indelible impact he had on the sport of basketball. ")

let magicJohnson = introduction(playerName: "Magic Johnson", imageName: "photo5", data1: "19.5", data2: "7.2", data3: "11.2", data4: "52.0", famousPlay: "“The Junior Sky Hook”: This iconic moment took place during Game 6 of the 1980 NBA Finals between the Los Angeles Lakers and the Philadelphia 76ers. In this pivotal game, Magic Johnson, typically a point guard but playing as a center due to injuries, displayed an exceptional performance. With only seconds remaining, Johnson drove into the paint, executed a running hook shot with his left hand over the outstretched arms of the 76ers' defenders, including the towering 7-foot-2 center Kareem Abdul-Jabbar. The successful basket secured the victory for the Lakers and clinched the NBA championship.")

let timDuncan = introduction(playerName: "Tim Duncan", imageName: "photo6", data1: "19.0", data2: "10.8", data3: "2.2", data4: "55.1", famousPlay: "During Game 1 of the 2008 Western Conference Finals between the San Antonio Spurs and the Los Angeles Lakers, In the closing seconds of the game, with the Spurs trailing by two points, Tim Duncan hit a memorable three-pointer to send the game into overtime. While Duncan wasn't known for his three-point shooting, his clutch shot demonstrated his versatility and ability to rise to the occasion when his team needed him. The Spurs went on to win the game in overtime, and Duncan's unexpected three-pointer remains one of the memorable plays in his illustrious career.")
#Preview {
    timDuncan
}

