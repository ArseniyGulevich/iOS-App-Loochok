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
        label.font = Constants.paragraph1Font
        label.textColor = UIColor.blue
        return label
    }()
    
}

private extension PostIdeaSetCell {
    func initialize() {
        selectionStyle = .default
        
        contentView.backgroundColor = Colors.lightGray1.uiColor
        contentView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
//            make.height.equalTo(backgroundShape.snp.height).inset(15)
        }

        contentView.addSubview(backgroundShape)
        contentView.addSubview(userImageView)
        contentView.addSubview(postImageView)
        contentView.addSubview(likeButton)
        contentView.addSubview(commentButton)
        
        backgroundShape.layer.cornerRadius = 28
        backgroundShape.layer.shadowRadius = 20
        backgroundShape.snp.makeConstraints { make in
            make.top.equalToSuperview()//.inset(10)
            make.horizontalEdges.equalToSuperview().inset(Constants.inset15)
            make.bottom.equalToSuperview().inset(Constants.inset12)
        }
        backgroundShape.layer.shadowColor = UIColor.black.cgColor
        backgroundShape.layer.shadowOpacity = 0.08
        backgroundShape.layer.shadowOffset = CGSize(width: 0, height: 4)
        backgroundShape.layer.shadowRadius = 5        
        
        postImageView.snp.makeConstraints { make in
            make.top.equalTo(backgroundShape).inset(Constants.inset8)
            make.centerX.equalTo(backgroundShape.snp.centerX)
            make.width.equalTo(backgroundShape.snp.width).inset(Constants.inset8)
            make.height.equalTo(314)
        }
        
        userImageView.snp.makeConstraints { make in
            make.leading.equalTo(backgroundShape.snp.leading).inset(Constants.inset15)
            make.top.equalTo(postImageView.snp.bottom).offset(Constants.inset20 / 2)
            make.size.equalTo(Constants.userImageSize)
        }
        
        let namesStack = UIStackView()
        namesStack.axis = .vertical
        namesStack.addArrangedSubview(usernameLabel)
        namesStack.addArrangedSubview(nicknameLabel)
        contentView.addSubview(namesStack)
        namesStack.snp.makeConstraints { make in
            make.centerY.equalTo(userImageView)
            make.leading.equalTo(userImageView.snp.trailing).offset(Constants.inset12)
        }

        likeButton.snp.makeConstraints { make in
            make.trailing.equalTo(backgroundShape.snp.trailing).inset(Constants.inset8)
            make.centerY.equalTo(userImageView)
            make.size.equalTo(36)
            make.bottom.equalToSuperview().inset(40)
        }

    }
    
}

