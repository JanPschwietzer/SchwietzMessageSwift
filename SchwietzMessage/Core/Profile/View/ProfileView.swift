//
//  ProfileView.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 18.11.23.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profleImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundStyle((Color(.systemGray4)))
                    }
                }
                Text("Name")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases, id: \.self) { option in
                        HStack {
                            Image(systemName: option.image)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(option.color)
                            Text(option.title)
                        }
                    }
                }
                
                Section {
                    Button("Log out") {
                        
                    }
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    ProfileView()
}
