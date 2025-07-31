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
                VStack(alignment: .leading, spacing: 1) {
                    Text("ikbaldemirdoven")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Vancouver, BC")
                        .font(.footnote)
                }
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
            HStack(spacing: 2) {
                Text("Liked by")
                Text("ikbaldemirdoven")
                    .bold()
                Text("and")
                Text("others")
                    .bold()
                Spacer()
            }
            .font(.footnote)
            .padding(.leading)
            //caption
            HStack {
                Text("ikbaldemirdoven ")
                    .bold()
                +
                Text("Some test captions...")
                Spacer()
            }
            .font(.footnote)
            .padding(.leading)
            //timestamp
            HStack {
                Text("6 hours ago")
                    .foregroundStyle(.gray)
                    .font(.footnote)
                Spacer()
            }
            .padding(.leading)
        }
        .padding(.top, 30)
    }
}

#Preview {
    FeedCell()
}
