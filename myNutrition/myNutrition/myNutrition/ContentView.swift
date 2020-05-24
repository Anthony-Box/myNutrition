//
//  ContentView.swift
//  myNutrition
//
//  Created by anthony dao on 5/23/20.
//  Copyright © 2020 Anthony. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showDetails = false
    @State var showSearch = false
    @State var showMore = false
    

    
    var body: some View {
        VStack{
            //Entire Top Bar
            HStack{
                //Settings Button, Needs Code
                Button(action:{
                    self.showDetails.toggle()
                }){
                    Image("settings-icon").foregroundColor(Color("accent"))
                }
                    if showDetails{
                        Text("I am working")
                            .font(.largeTitle)
                    }
                //Space
                Spacer()
                
                //The Name @ the Top
                Text("myNutrition")
                    .font(.subheadline).italic()
                    .foregroundColor(Color("accent"))
                
                //Space
                Spacer()
                
                //Search Function Needs Actual Code
                Button(action:{
                    self.showSearch.toggle()
                }){
                    Image("search-icon").foregroundColor(Color("accent"))
                    if showSearch{
                        Text("I am also working")
                            .font(.largeTitle)
                    }
                }
            }
            .padding()
            .background(Color("background1"))
            ScrollView(.vertical){
                ImagePost1()
                ImagePost1()
                ImagePost1()
                }
            
            NavigationView{
                HStack{
                    NavigationLink(destination: Text("Second View")) {
                        Image("home_24px")
                    }.navigationBarTitle("Navigation")
                    NavigationLink(destination: Text("New Posts")){
                        Image("NewPostIcon")
                    }
                }
//                HStack{
//                    Image("home_24px")
//
//                    Image("NewPostIcon")
//
//                    Image("InsightsIcon")
//
//                    Image("MessagesIcon")
//
//                }.padding()
            }
            
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
