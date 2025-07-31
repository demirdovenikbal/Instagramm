//
//  ProfileView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-27.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.colorScheme) var colorScheme
    let gridItems : [GridItem] =
    [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                VStack {
                    //pic and stat
                    HStack {
                        Image("ikbal")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        Spacer()
                        //name
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Ikbal Demirdoven")
                                .fontWeight(.semibold)
                            //stats
                            HStack {
                                StatView(stat: 68, title: "posts")
                                Spacer()
                                StatView(stat: 272, title: "followers")
                                Spacer()
                                StatView(stat: 362, title: "following")
                            }
                            .padding(.trailing, 85)
                        }
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    }
                    .padding(.leading)
                    //bio
                    HStack(spacing: 4) {
                        Image(systemName: "f.cursive.circle")
                        Text("Ikbal Demirdoven")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //action buttons
                    HStack(spacing: 8) {
                        Button {
                            
                        } label: {
                            Text("Edit profile")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 6)
                                .background(Color(.systemGray6))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        Button {
                            
                        } label: {
                            Text("Share profile")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 6)
                                .background(Color(.systemGray6))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "person.crop.circle.badge.plus")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                                .frame(maxWidth: 35)
                                .padding(.vertical, 6)
                                .background(Color(.systemGray6))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    .padding(.horizontal)
                }
                //grid
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...15, id: \.self) {
                        pic in
                        Image("ikbal")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            //toolbar
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        HStack(spacing: 5) {
                            Image(systemName: "lock")
                                .imageScale(.small)
                            Text("ikbaldemirdoven")
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.down")
                                .imageScale(.small)
                        }
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "pencil.and.outline")
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                            .imageScale(.large)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.app")
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                            .imageScale(.large)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
