//
//  ProfileViewModel.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 18.11.23.
//

import Foundation
import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet {
            Task { try await loadImage() }
        }
    }
    
    @Published var profleImage: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profleImage = Image(uiImage: uiImage)
    }
}
