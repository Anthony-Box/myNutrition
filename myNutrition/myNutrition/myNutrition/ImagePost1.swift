//
//  ImagePost.swift
//  myNutrition
//
//  Created by anthony dao on 5/24/20.
//  Copyright © 2020 Anthony. All rights reserved.
//

import SwiftUI

struct ImagePost1: View {
    @State var showMore = false
    
    var body: some View {
        VStack(spacing: 0){
            //Top of the Post
            HStack{
                //Date of Post
                Text("May 24 2:08AM")
                    .font(.subheadline)
                
                Spacer()
                
                //3Dots on the Side
                Button(action:{
                  self.showMore.toggle()
                }){
                    Image("more_vert_24px")
                        .foregroundColor(Color("accent"))
                }
                if showMore {
                    Text("I am working")
                        .font(.largeTitle)
                }
            }
            .padding()
            .background(Color("background2"))
            
            //image box
            HStack{
                Image("PlacerImageUncolored")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("background3"))
            }
            
            //post description
            HStack{
                Text("I am a working comment section...")
                    .padding()
                    .font(.caption)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color("background2"))
        }
        .padding()
    }
}
