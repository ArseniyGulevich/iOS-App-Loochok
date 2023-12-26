//
//  PostIdeaSetCell.swift
//  Profile
//  Created by Арсений Гулевич  on 15.12.2023.
//

import SnapKit
import UIKit

class PostIdeaSetCell: UITableViewCell {
    func configure(with info: IdeaItemCellInfo) {
        userImageView.image = info.userImage
        usernameLabel.text = info.username
        nicknameLabel.text = info.nickname
        postImageView.image = info.postImage
        likesLabel.text = "\(info.numberOfLikes)"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private enum UIConstants {
        static let UserImageSize: CGFloat = 45
    }
    
    private let userImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = UIConstants.UserImageSize / 2
        view.clipsToBounds = true
        return view
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.fontP
        return label
    }()
    
    private let nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.fontP
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
        label.font = Constants.fontP
        label.textColor = UIColor.blue
        return label
    }()
    
}

private extension PostIdeaSetCell {
    func initialize() {
        selectionStyle = .none
        
        contentView.backgroundColor = Colors.lightGray.uiColor
        contentView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }

        contentView.addSubview(backgroundShape)
        contentView.addSubview(userImageView)
        contentView.addSubview(postImageView)
        contentView.addSubview(likeButton)
        contentView.addSubview(commentButton)
        
        backgroundShape.layer.cornerRadius = 28
        backgroundShape.layer.shadowRadius = 20
        backgroundShape.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        backgroundShape.layer.shadowColor = UIColor.black.cgColor
        backgroundShape.layer.shadowOpacity = 0.08
        backgroundShape.layer.shadowOffset = .zero
        backgroundShape.layer.shadowRadius = 10
        
        
        postImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(Constants.inset8)
            make.top.equalToSuperview().inset(Constants.inset8)
            make.width.equalToSuperview().inset(Constants.inset8)
            make.height.equalTo(314)
        }
        
        userImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(Constants.inset8)
            make.top.equalTo(postImageView.snp.bottom).offset(Constants.inset20 / 2)
            make.size.equalTo(UIConstants.UserImageSize)
        }
        
        let namesStack = UIStackView()
        namesStack.axis = .vertical
        namesStack.addArrangedSubview(usernameLabel)
        namesStack.addArrangedSubview(nicknameLabel)
        contentView.addSubview(namesStack)
        namesStack.snp.makeConstraints { make in
            make.centerY.equalTo(userImageView)
            make.leading.equalTo(userImageView.snp.trailing).offset(Constants.inset20)
        }

        likeButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(Constants.inset20)
            make.centerY.equalTo(userImageView)
            make.size.equalTo(45)
            make.bottom.equalToSuperview().inset(40)
        }
    

    }
    
    
    
}

