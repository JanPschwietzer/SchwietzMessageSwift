//
//  InboxRowView.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 17.11.23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .foregroundStyle(Color(.systemGray4))
                VStack(alignment: .leading) {
                    Text("Name")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("Dies ist eine sehr lange Nachricht um zu schauen wie es ist wenn ich sehr viel Text in dem View habe!")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .lineLimit(2)
                        .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
                }
            }
            .frame(height: 72)
            
            HStack {
                Text("Yesterday")
                Image(systemName: "circle.fill")
                    .foregroundStyle(.blue)
                Image(systemName: "chevron.right")
            }
            .padding(.top, 5)
            .font(.footnote)
            .foregroundStyle(.gray)
        }
    }
}

#Preview {
    InboxRowView()
}
