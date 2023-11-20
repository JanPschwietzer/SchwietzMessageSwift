//
//  NewMessageView.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 17.11.23.
//

import SwiftUI

struct NewMessageView: View {
    
    @State private var searchText = ""
    @Environment(\.dismiss) private var dismiss;
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("To:", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                    .padding()
                ScrollView {
                    VStack {
                        Text("CONTACTS")
                            .foregroundStyle(.gray)
                            .font(.footnote)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .padding()
                        
                        ForEach(0...10, id: \.self) { data in
                            HStack {
                                CircularProfileImageView(user: User.TEST_USER2, lineWidth: 1)
                                    .frame(width: 32, height: 32)
                                .foregroundStyle(Color(.systemGray4))
                                Text("Name")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Spacer()
                            }
                            .padding(.horizontal)
                            Divider()
                                .padding(.leading, 40)
                            
                        }
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NewMessageView()
}
