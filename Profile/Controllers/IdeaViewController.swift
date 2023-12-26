//
//  IdeaViewController.swift
//  Profile
//
//  Created by Арсений Гулевич  on 25.12.2023.
//

import UIKit

class IdeaViewController: UIViewController {
    
    var item: PostITemType?
    
    func configure(with info: IdeaItemCellInfo) {
//        userImageView.image = info.userImage
        usernameLabel.text = info.username
//        nicknameLabel.text = info.nickname
//        postImageView.image = info.postImage
//        likesLabel.text = "\(info.numberOfLikes)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
        
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.fontH1
        return label
    }()
    
}

extension IdeaViewController {
    
    func initialize() {
        view.backgroundColor = .yellow
    }
    
}
