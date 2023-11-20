//
//  User.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 20.11.23.
//

import Foundation

struct User: Codable, Identifiable {
    var id = UUID().uuidString
    let fullName: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    static let TEST_USER = User(fullName: "Jan Schwietzer", email: "jan@schwietz.de", profileImageUrl: "schwietz")
    static let TEST_USER2 = User(fullName: "Name", email: "email@gmail.de")
}
