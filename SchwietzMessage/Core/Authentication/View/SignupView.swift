//
//  LoginView.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 17.11.23.
//

import SwiftUI

struct SignupView: View {
    
    @State private var email = ""
    @State private var name = ""
    @State private var password = ""
    
    @Environment(\.dismiss) private var dismiss;
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image(systemName: "message.badge.filled.fill")
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.blue, .white)
                    .frame(width: 150, height: 150)
                    .shadow(color: .black, radius: 20)
                    .padding(.vertical, 24)
                
                VStack {
                    TextField("Email", text: $email)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    TextField("Name", text: $name)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    SecureField("Password", text: $password)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                }
                .font(.subheadline)
                .padding(.horizontal, 18)
                .padding(.bottom, 24)
                
                Button {
                    
                } label: {
                    Text("Signup")
                }
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 360, height: 44)
                .background(Color(.systemBlue))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                
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
                .padding(.vertical)
                
                HStack {
                    Image(systemName: "message.badge.filled.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Continue with Google")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(Color(.systemBlue))
                
                Spacer()
                
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        Text("Login")
                    }
                    .font(.footnote)
                    .fontWeight(.semibold)
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    SignupView()
}
