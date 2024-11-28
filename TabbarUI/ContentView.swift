//
//  ContentView.swift
//  TabbarUI
//
//  Created by Gokhan on 28.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            Text("Deneme1")
                .tabItem(
                    "Anasayfa",
                    image: UIImage(systemName: "house"),
                    selectedImage: UIImage(systemName: "house.fill")
                )
            Text("Deneme2")
                .tabItem("Ödemeler", image: UIImage(systemName: "heart"),selectedImage: UIImage(systemName: "heart.fill"))
         
        }
    }
}

#Preview {
    ContentView()
}
