//
//  User.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-08-02.
//

import Foundation

struct User : Identifiable, Codable {
    let id : String
    var username : String
    var profileImageURL : String?
    var fullname : String
    var bio : String?
    let email : String
    
    static var MOCK_USERS : [User] =
    [
        .init(id: NSUUID().uuidString, username: "ikbal", profileImageURL: "ikbal", fullname: "Ikbal Demirdoven", bio: "Ikbal", email: "ikbaldemirdoven@icloud.com"),
        .init(id: NSUUID().uuidString, username: "hasan", profileImageURL: "hasan", fullname: "Hasan Demirdoven", bio: "Hasan", email: "ikbaldemirdoven@icloud.com"),
        .init(id: NSUUID().uuidString, username: "furkan", profileImageURL: "furkan", fullname: "Furkan Demirdoven", bio: "Furkan", email: "ikbaldemirdoven@icloud.com"),
        .init(id: NSUUID().uuidString, username: "selman", profileImageURL: "selman", fullname: "Selman Demirdoven", bio: "Selman", email: "ikbaldemirdoven@icloud.com"),
        .init(id: NSUUID().uuidString, username: "sumeyra", profileImageURL: "sumeyra", fullname: "Sumeyra Demirdoven", bio: "Sumeyra", email: "ikbaldemirdoven@icloud.com"),
        .init(id: NSUUID().uuidString, username: "semsinur", profileImageURL: "semsinur", fullname: "Semsinur Dost", bio: "Semsinur", email: "ikbaldemirdoven@icloud.com"),
        .init(id: NSUUID().uuidString, username: "halil", profileImageURL: "halil", fullname: "Halil Demirdoven", bio: "Halil", email: "ikbaldemirdoven@icloud.com")
    ]
}
