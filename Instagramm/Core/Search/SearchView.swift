//
//  SearchView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-31.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            Divider()
            ScrollView {
                LazyVStack {
                    HStack {
                        Text("Recent")
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("See all")
                        }
                    }
                    .bold()
                    .padding(.horizontal)
                    .padding(.bottom)
                    ForEach(0...20, id: \.self) {
                        user in
                        HStack {
                            Image("ikbal")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(spacing: 2) {
                                Text("ikbaldemirdoven")
                                    .bold()
                                Text("Ikbal Demirdoven")
                            }
                            .font(.footnote)
                            Spacer()
                            Image(systemName: "xmark")
                                .foregroundStyle(.gray)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    }
                    .padding(.vertical, 4)
                }
                .padding(.top)
            }
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    SearchView()
}
