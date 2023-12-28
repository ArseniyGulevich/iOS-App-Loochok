//
//  CommentModel.swift
//  Profile
//
//  Created by Арсений Гулевич  on 28.12.2023.
//

import Foundation

public struct CommentModel {
    
    let id: Int
    let postId: Int
    let userId: Int
    let date: String
    let body: String
    
    init(id: Int, postId: Int, userId: Int, date: String, body: String) {
        self.id = id
        self.postId = postId
        self.userId = userId
        self.date = date
        self.body = body
    }

}
