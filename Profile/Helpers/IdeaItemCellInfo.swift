//
//  IdeaItemInfo.swift
//  Profile
//  Created by Арсений Гулевич  on 15.12.2023.
//

import UIKit

struct IdeaItemCellInfo {
    let userImage: UIImage
    let username: String
    let nickname: String
    let postImage: UIImage
    let tags: [String]
    let numberOfLikes: Int
    let comment: CommentShortInfo?
    let title: String?
    let description: String?
    let createdAt: String
}

struct CommentShortInfo {
    let username: String
    let commentText: String
}
