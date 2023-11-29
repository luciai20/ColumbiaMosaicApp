//
//  ContentView.swift
//  ColumbiaMosaic
//
//  Created by Lucia Perez-Saignac on 10/31/23.
//

import SwiftUI
import MapKit

// Define the Location struct including an image for the annotation
struct Location: Identifiable {
    let id: UUID
    let coordinate: CLLocationCoordinate2D
    let imageName: String 
}

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.8075, longitude: -73.963036),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    @State private var searchText = ""
    
    // Create an array of locations with associated images
    let locations = [
        Location(id: UUID(), coordinate: CLLocationCoordinate2D(latitude: 40.8069165, longitude: -73.9636118), imageName: "concert"),
        Location(id: UUID(), coordinate: CLLocationCoordinate2D(latitude: 40.8079, longitude: -73.9622), imageName: "exhibits"),
        Location(id: UUID(), coordinate: CLLocationCoordinate2D(latitude: 40.810062, longitude: -73.9628768), imageName: "arts"),
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Map(coordinateRegion: $region, interactionModes: .all, annotationItems: locations) { location in
                    MapAnnotation(coordinate: location.coordinate) {
                        Image(location.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .background(Circle().fill(Color.white.opacity(0.5)))
                                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                                .clipShape(Circle())
                    }
                }
                .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
                    
                        VStack(alignment: .leading) {
                            Text("Kill Your Darling")
                                .foregroundColor(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255))
                                .font(.title)
                            HStack {
                                Text("Date, Time, Location")
                                    .foregroundColor(Color.gray)
                                
                            }
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            
                            Divider()
                            Text("A ritual for your crustiest love poems, a seance for your Percy Jackson fanfiction. Bring the drafts that haunt you and join us in communing with all our old, dead writing. xοxο, 4×4")
                                .foregroundColor(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255))
                        }
                        
                        .padding() // Add padding around the text
                        .overlay(
                            Rectangle().stroke(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255), lineWidth: 4) // This adds the border to the VStack
                        )
                        .background(Rectangle().fill(Color.white.opacity(0.75))) 
                        //.frame(maxWidth: .infinity, maxHeight: 190)
                        .edgesIgnoringSafeArea(.all)
                        
                        
                        
                    
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
                        }
                    }.frame(maxWidth: .infinity, maxHeight: 100, alignment: .center) // Set the frame to the desired size
                        .background(Rectangle().fill(Color.gray.opacity(0.5))) // This sets the background of the VStack
                        .edgesIgnoringSafeArea(.all)
                }.edgesIgnoringSafeArea(.all)
                
                
                VStack() {
                    //Spacer()
                    HStack {
                        Spacer()
                        VStack{
                            Button(action: {
                                withAnimation {}}) {
                                Image("signin")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                }.padding(.trailing, 10)
                            Spacer()
                            
                        }
                    }
                    //.padding(.trailing, 5)
                      .padding(.bottom, 300)
                    
                    
                }
                VStack{

                    HStack{
                        TextField("Search Events", text: $searchText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading, 10)
                            
                    }
                    .frame(width: 270, height: 30)
                        .background(Color(.white))
                        .cornerRadius(40)

                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color(red: 2 / 255, green: 19 / 255, blue: 78 / 255), lineWidth: 4))
                        .padding(.leading, 10)
                        
                    Spacer()
                }
                .padding(.top, 75)
                .padding(.trailing, 90)
                .edgesIgnoringSafeArea(.all)
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
