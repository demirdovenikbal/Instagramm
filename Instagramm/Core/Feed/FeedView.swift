//
//  FeedView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-30.
//

import SwiftUI

struct FeedView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...25, id: \.self) {
                        post in
                        FeedCell()
                    }
                }
            }
            .padding(.vertical, -10)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image("instagramtextlogo")
                            .resizable()
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                            .frame(width: 100, height: 32)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .imageScale(.large)
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis.message")
                            .imageScale(.large)
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
