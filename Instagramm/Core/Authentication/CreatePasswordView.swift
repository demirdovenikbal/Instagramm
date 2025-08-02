//
//  CreatePasswordView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-08-02.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Create a password")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            Text("Your password must be at least 6 characters in length")
                .foregroundStyle(.gray)
                .font(.footnote)
                .multilineTextAlignment(.center)
            SecureField("Password", text: $password)
                .textInputAutocapitalization(.never)
                .modifier(TextFieldModifier())
            NavigationLink {
                WelcomePageView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
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
    CreatePasswordView()
}
