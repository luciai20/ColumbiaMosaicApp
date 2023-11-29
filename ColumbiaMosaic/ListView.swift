//
//  ListView.swift
//  ColumbiaMosaic
//
//  Created by Lucia Perez-Saignac on 11/5/23.
//

import SwiftUI

struct ListView: View {
    @State private var searchText = ""
    
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    HStack{
                        TextField("Search Events", text: $searchText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        
                        
                    }
                    .frame(width: 270, height: 30)
                    .background(Color(.white))
                    .cornerRadius(40)
                    .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255), lineWidth: 4))
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    
                    Image("signin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    
                }
                Spacer()
                
                
                
            }
            .padding(.top, 60)
            .padding(.bottom, 50)
            
            .edgesIgnoringSafeArea(.all)
            //Make this VStack an object where information will be filled with whatever is retrieved from the database
            VStack{
                VStack(alignment: .leading){
                    Text("Event Type • Category Tyoe")
                        .font(.system(size: 12, weight: .light))
                    HStack{
                        Text("Kill Your Darlings")
                            .foregroundColor(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255))
                            .font(.title)
                        
                        Image("saved")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .padding(.leading, 70)
                        
                    }
                    Text("Date • Time • Location")
                        .font(.system(size: 12, weight: .light))
                        .padding(.bottom, 2)
                    Text("A ritual for your crustiest love poems, a seance for your percy jackson fanfiction. bring the drafts that haunt you and join us in communing with all our old, dead writing. xοxο, 4×4")
                        .font(.subheadline)
                    
                    
                }.padding()
                    .frame(maxWidth: 350, maxHeight: 500, alignment: .topLeading) // Set the frame to the desired size
                    .edgesIgnoringSafeArea(.all)
                    .overlay(Rectangle().stroke(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255), lineWidth: 4))
                    .background(Color.gray.opacity(0.5))
                VStack(alignment: .leading){
                    Text("Event Type • Category Tyoe")
                        .font(.system(size: 12, weight: .light))
                    HStack{
                        Text("Kill Your Darlings")
                            .foregroundColor(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255))
                            .font(.title)
                        
                        Image("saved")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .padding(.leading, 70)
                        
                    }
                    Text("Date • Time • Location")
                        .font(.system(size: 12, weight: .light))
                        .padding(.bottom, 2)
                    Text("A ritual for your crustiest love poems, a seance for your percy jackson fanfiction. bring the drafts that haunt you and join us in communing with all our old, dead writing. xοxο, 4×4")
                        .font(.subheadline)
                    
                    
                }.padding()
                    .frame(maxWidth: 350, maxHeight: 500, alignment: .topLeading) // Set the frame to the desired size
                    .edgesIgnoringSafeArea(.all)
                    .overlay(Rectangle().stroke(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255), lineWidth: 4))
                    .background(Color.gray.opacity(0.5))
                Spacer()
                //edit this so that each one is vertical stack within the bigger horizontal stack
                VStack{
                    VStack{
                        HStack{
                            Button(action: {
                                withAnimation {}}) {
                                    Image("savedblack")
                                }.padding(.leading, 30)
                                .padding(.trailing, 50)
                            
                            Button(action: {
                                withAnimation {}}) {
                                    Image("mapview")
                                }.padding(.leading, 25)
                                .padding(.trailing, 20)
                                .padding(.bottom, 5)
                            
                            
                            Button(action: {
                                withAnimation {}}) {
                                    Image("listview")
                                }.padding(.leading, 50)
                                .padding(.trailing, 30)
                            
                        }
                        VStack{
                            HStack (alignment: .center){
                                Text("Saved Events").font(.system(size: 14)).padding(.trailing, 1)
                                Text("Map View").font(.system(size: 14)).padding(.leading, 30).padding(.trailing, 30)
                                Text("List View").font(.system(size: 14)).padding(.leading, 1)
                            }.padding(.bottom, 15)
                        }
                        //.frame(maxWidth: 25 , maxHeight: 25, alignment: .center)
                    }}
                .frame(maxWidth: .infinity, maxHeight: 100, alignment: .bottom) // Set the frame to the desired size
                .overlay(Rectangle().stroke(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255), lineWidth: 4))
                .background(Rectangle().fill(Color.gray.opacity(0.5))) // This sets the background of the VStack
                .edgesIgnoringSafeArea(.all)
            }
            .padding(.top, 150)
            .edgesIgnoringSafeArea(.all)
            
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
        }
        
        
        
    }
    
        
    }
        


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct Previews_ListView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
