//
//  WelcomePageView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-08-02.
//

import SwiftUI

struct WelcomePageView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Instagram ikbaldemirdoven")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
                .multilineTextAlignment(.center)
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
            NavigationLink {
                CreateUsernameView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Complete Sign Up")
                    .modifier(ButtonModifier())
            }
            .padding(.top)
            Spacer()
        }
        .padding(.horizontal)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                }
            }
        }
    }
}

#Preview {
    WelcomePageView()
}
