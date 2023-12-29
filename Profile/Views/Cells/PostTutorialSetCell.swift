//
//  PostTutorialSetCell.swift
//  Profile
//  Created by Арсений Гулевич  on 15.12.2023.
//

import SnapKit
import UIKit

class PostTutorialSetCell: UITableViewCell {
    func configure(with info: TutirialItemCellInfo) {
        postImageView.image = info.postImage
        titleLabel.text = info.title
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.heading4Font
        label.textColor = Colors.black.uiColor
        label.numberOfLines = 4
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

}

private extension PostTutorialSetCell {
    func initialize() {
        selectionStyle = .default
        
        contentView.backgroundColor = Colors.lightGray1.uiColor
        contentView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }

        contentView.addSubview(backgroundShape)
        contentView.addSubview(postImageView)
        contentView.addSubview(titleLabel)
        
        backgroundShape.layer.cornerRadius = 28
        backgroundShape.layer.shadowRadius = 20
        backgroundShape.snp.makeConstraints { make in
            make.top.equalToSuperview()
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
            make.height.equalTo(180)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(postImageView.snp.bottom).offset(Constants.inset8)
            make.leading.equalTo(backgroundShape).inset(Constants.inset20)
            make.width.equalTo(backgroundShape.snp.width).inset(Constants.inset20)
            make.bottom.equalToSuperview().inset(28)
        }
    }
}
