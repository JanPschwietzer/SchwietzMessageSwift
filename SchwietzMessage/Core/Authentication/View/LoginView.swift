//
//  LoginView.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 17.11.23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                ZStack {
                    Image(systemName: "bubble.fill")
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(LinearGradient(
                            gradient: Gradient(colors: [.red, .purple, .indigo, .blue]),
                            startPoint: .topTrailing,
                            endPoint: .bottomLeading
                        ))
                        .frame(width: 150, height: 150)
                        .shadow(color: .gray, radius: 20)
                        .padding(.vertical, 24)
                    Image(systemName: "person.2.fill")
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.white)
                        .frame(width: 125, height: 125)
                        .padding(.bottom, 25)
                        .padding(.leading, 5)
                }
                
                VStack {
                    TextField("Email", text: $email)
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
                
                Button {
                    
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom)
                
                Button {
                    
                } label: {
                    Text("Login")
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
                
                NavigationLink {
                    SignupView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("No account?")
                        Text("Signup")
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
    LoginView()
}
