//
//  InboxView.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 17.11.23.
//

import SwiftUI

struct InboxView: View {
    
    @State private var showNewMessageView = false
    @State private var user = User.TEST_USER
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
                
                List {
                    ForEach(0...10, id: \.self) { row in
                        InboxRowView()
                    }
                }
                .listStyle(.plain)
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        NavigationLink {
                            ProfileView(user: user)
                        } label: {
                            CircularProfileImageView(user: user, lineWidth: 1)
                                .frame(width: 32, height: 32)
                        }
                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showNewMessageView.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray5))
                    }
                }
            }
            .fullScreenCover(isPresented: $showNewMessageView) {
                NewMessageView()
            }
        }
    }
}

#Preview {
    InboxView()
}
