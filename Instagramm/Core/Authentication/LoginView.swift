//
//  LoginView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-31.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("instagramtextlogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                VStack {
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.never)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.horizontal)
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Forgot your password?")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.trailing)
                            .padding(.top, 5)
                    }
                }
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundStyle(.gray)
                
                HStack {
                    Image(systemName: "f.cursive.circle")
                        .imageScale(.large)
                    Text("Continue with FaceBook")
                }
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
                .padding(.top)
                
                Spacer()
                Divider()
                NavigationLink {
                    Text("Sign up")
                } label: {
                    HStack {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .bold()
                    }
                    .font(.footnote)
                    .padding(.vertical)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
