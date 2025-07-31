//
//  FeedCell.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-30.
//

import SwiftUI

struct FeedCell: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            //profile picture + username
            HStack {
                Image("ikbal")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("ikbaldemirdoven")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            //image
            VStack {
                Image("ikbal")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .clipShape(Rectangle())
            }
            //action buttons
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                }
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")

                }
                Text("85")
                    .padding(.leading, -5)
                    .font(.footnote)
                    .fontWeight(.bold)
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                }
            }
            .imageScale(.large)
            .padding(.horizontal)
            .foregroundStyle(colorScheme == .dark ? .white : .black)
            //likes label
            Text("Liked by")
            //caption
        }
    }
}

#Preview {
    FeedCell()
}
