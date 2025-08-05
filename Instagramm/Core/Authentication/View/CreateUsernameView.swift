//
//  CreateUsernameView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-08-02.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Text("Create a username")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            Text("You'll use this username to log into your account")
                .foregroundStyle(.gray)
                .font(.footnote)
                .multilineTextAlignment(.center)
            TextField("Username", text: $username)
                .textInputAutocapitalization(.never)
                .modifier(TextFieldModifier())
            NavigationLink {
                CreatePasswordView()
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
    CreateUsernameView()
}
