//
//  PostModel.swift
//  Profile
//

import Foundation

public struct PostModel {
    let id: Int
    let userId: Int
    let createdAt: String
    let type: String
    let title: String
    let description: String
    let postImage: String
    let categoryIds: [Int]
    let tagIds: [Int]

    public init(id: Int, userId: Int, createdAt: String, type: String, title: String, description: String, postImage: String, categoryIds: [Int], tagIds: [Int]) {
        self.id = id
        self.userId = userId
        self.createdAt = createdAt
        self.type = type
        self.title = title
        self.description = description
        self.postImage = postImage
        self.categoryIds = categoryIds
        self.tagIds = tagIds
    }
    
}
