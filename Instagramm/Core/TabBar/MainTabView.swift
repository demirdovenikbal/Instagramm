//
//  MainTabView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-27.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("", systemImage: "house") {
                FeedView()
            }
            Tab("", systemImage: "magnifyingglass") {
                SearchView()
            }
            Tab("", systemImage: "plus.square") {
                
            }
            Tab("", systemImage: "play.square") {
                
            }
            Tab("", systemImage: "person.crop.circle") {
                ProfileView()
            }
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
