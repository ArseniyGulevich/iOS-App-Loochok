//
//  UserModel.swift
//  Profile
//  Created by Арсений Гулевич  on 28.12.2023.
//

import Foundation

public struct UserModel {
    let id: Int
    let name: String
    let userImage: String
    let email: String
    let password: String
    let isAdmin: Bool
    
    init(id: Int, name: String, userImage: String, email: String, password: String, isAdmin: Bool) {
        self.id = id
        self.name = name
        self.userImage = userImage
        self.email = email
        self.password = password
        self.isAdmin = isAdmin
    }

}
