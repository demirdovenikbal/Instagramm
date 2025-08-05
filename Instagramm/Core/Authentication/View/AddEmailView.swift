//
//  AddEmailView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-31.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Add your email")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            Text("You'll use this email to log into your account")
                .foregroundStyle(.gray)
                .font(.footnote)
                .multilineTextAlignment(.center)
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
                .modifier(TextFieldModifier())
            NavigationLink {
                CreateUsernameView()
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
    AddEmailView()
}
