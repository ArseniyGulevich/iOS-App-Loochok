//
//  TutorialVC.swift
//  Profile
//
//  Created by Арсений Гулевич  on 29.12.2023.
//

import Foundation
import UIKit

class TutorialVC: UIViewController {
    
    var postCard: TutirialItemCellInfo?
    
    func configure(with info: TutirialItemCellInfo) {
        userImageView.image = info.userImage
        usernameLabel.text = info.username
        nicknameLabel.text = info.nickname
        postImageView.image = info.postImage
        likesLabel.text = "\(info.numberOfLikes)"
        titleLabel.text = info.title
        createdAtLabel.text = info.createdAt
    }
    
    private let userImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = Constants.userImageSize / 2
        view.clipsToBounds = true
        return view
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraph1Font
        return label
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraph1Font
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
        view.image = UIImage(named: "postImage1")
        return view
    }()
    
    private let createdAtLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraph1Font
        label.textColor = Colors.gray.uiColor
        return label
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor.black
        button.setImage(UIImage(named: "heart"), for: .normal)
        button.setImage(UIImage(named: "heart"), for: .normal)
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.heading3Font
        label.textColor = Colors.black.uiColor
        label.numberOfLines = 5
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraph2Font
        label.textColor = Colors.black.uiColor
        return label
    }()
    
    private let commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor.black
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        return button
    }()
    
    private let likesLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.paragraph1Font
        label.textColor = UIColor.blue
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        view.backgroundColor = Colors.lightGray1.uiColor
        
        view.addSubview(userImageView)
        view.addSubview(postImageView)
        view.addSubview(createdAtLabel)
        view.addSubview(likeButton)
        view.addSubview(commentButton)
        
        createdAtLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(Constants.inset20 * 5)
            make.height.equalTo(20)
            make.leading.equalToSuperview().inset(Constants.inset15)
        }
        
        userImageView.snp.makeConstraints { make in
            make.top.equalTo(createdAtLabel.snp.bottom).offset(Constants.inset20)
            make.leading.equalToSuperview().inset(Constants.inset15)
            make.size.equalTo(Constants.userImageSize)
        }
        let namesStack = UIStackView()
        namesStack.axis = .vertical
        namesStack.addArrangedSubview(usernameLabel)
        namesStack.addArrangedSubview(nicknameLabel)
        view.addSubview(namesStack)
        namesStack.snp.makeConstraints { make in
            make.centerY.equalTo(userImageView)
            make.leading.equalTo(userImageView.snp.trailing).offset(Constants.inset12)
        }
        likeButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(Constants.inset15)
            make.centerY.equalTo(userImageView)
            make.size.equalTo(36)
        }
        
        let textsStack = UIStackView()
        textsStack.axis = .vertical
        textsStack.addArrangedSubview(titleLabel)
        textsStack.addArrangedSubview(descriptionLabel)
        view.addSubview(textsStack)
        textsStack.snp.makeConstraints { make in
            make.top.equalTo(likeButton.snp.bottom).offset(Constants.inset20)
            make.leading.equalTo(userImageView.snp.leading)
            make.width.equalToSuperview().inset(Constants.inset20)
        }
        
        postImageView.snp.makeConstraints { make in
            make.top.equalTo(textsStack.snp.bottom).offset(Constants.inset20 / 2)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().inset(Constants.inset15)
            make.height.equalTo(314)
        }
    }
}
