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
                
            }
            Tab("", systemImage: "magnifyingglass") {
                
            }
            Tab("", systemImage: "plus.square") {
                
            }
            Tab("", systemImage: "heart") {
                
            }
            Tab("", systemImage: "person") {
                ProfileView()
            }
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
