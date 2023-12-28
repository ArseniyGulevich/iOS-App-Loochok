//
//  IdeaVC.swift
//  Profile
//  Created by Арсений Гулевич  on 28.12.2023.
//

import Foundation
import UIKit

class PostCardViewController: UIViewController {
    
    var postCard: IdeaItemCellInfo?
    
    func configure(with info: IdeaItemCellInfo) {
        userImageView.image = info.userImage
        usernameLabel.text = info.username
        nicknameLabel.text = info.nickname
        postImageView.image = info.postImage
        likesLabel.text = "\(info.numberOfLikes)"
    }
    
    private let userImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 40 // UIConstants.UserImageSize / 2
        view.clipsToBounds = true
        return view
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraphFont
        return label
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraphFont
        label.textColor = UIColor.lightGray
        return label
    }()
    
    private let backgroundShape: UIImageView = {
        let view = UIImageView()
        view.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        view.backgroundColor = Colors.white.uiColor
        return view
    }()
    
    private let postImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = Constants.inset20
        view.clipsToBounds = true
        return view
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor.black
        button.setImage(UIImage(named: "heart"), for: .normal)
        button.setImage(UIImage(named: "heart"), for: .normal)
        return button
    }()
    
    private let commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor.black
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        return button
    }()
    
    private let likesLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraphFont
        label.textColor = UIColor.blue
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        view.backgroundColor = .white
        
        if let postCard = postCard {
            view.addSubview(backgroundShape)
            view.addSubview(userImageView)
            view.addSubview(postImageView)
            view.addSubview(likeButton)
            view.addSubview(commentButton)
        }
    }
}
