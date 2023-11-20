//
//  CircularProfileImageView.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 20.11.23.
//

import SwiftUI

struct CircularProfileImageView: View {
    
    let user: User
    let lineWidth: Int
    
    var body: some View {
        Image(user.profileImageUrl ?? "unknown")
            .resizable()
            .scaledToFill()
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray, lineWidth: CGFloat(lineWidth)))
    }
}

#Preview {
    CircularProfileImageView(user: User.TEST_USER, lineWidth: 2)
}
