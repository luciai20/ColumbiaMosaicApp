//
//  ColumbiaMosaicApp.swift
//  ColumbiaMosaic
//
//  Created by Lucia Perez-Saignac on 10/31/23.
//

import SwiftUI

@main
struct ColumbiaMosaicApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct Previews_ColumbiaMosaicApp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Image("icon")
                .resizable() // Allow the image to be resized
                .scaledToFit() // Maintain the image's aspect ratio
                .frame(width: 270, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color(red: 0/255, green: 0/255, blue: 110/255), lineWidth: 4)
                                )
                .overlay(
                    Text("Columbia Mosaic")
                        .frame(width: 230, height: 50)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0/255, green: 0/255, blue: 110/255))
                        .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
                        .background(Color.white)
                )
        }
    }
}

struct Previews_ColumbiaMosaicApp_Previews_2: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
