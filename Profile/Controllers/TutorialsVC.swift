//
//  TutorialsVC.swift
//  Profile
//
//  Created by Арсений Гулевич  on 16.12.2023.
//

import SnapKit
import UIKit

class TutorialsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        tableView.delegate = self
    }
    
    private var tableView = UITableView()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor.black
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        return button
    }()
    
    private let coverView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pageCoverImageForTutorials")
        return image
    }()
    
    private let headingLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.heading3Font
        label.textColor = Colors.lightGray1.uiColor
        label.text = " Чему научимся?".uppercased()
        label.backgroundColor = Colors.black.uiColor
        return label
    }()
        
    private var postCards: [TutirialItemCellInfo] = [
        TutirialItemCellInfo(
            title: "Как расписать кеды красками и фломастерами",
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Пропащий",
            nickname: "victor282",
            postImage: UIImage(named: "Image8")!,
            tags: nil,
            numberOfLikes: 15,
            createdAt: "четыре часа назад"
        ),
        TutirialItemCellInfo(
            title: "Как сделать крутую кастомную вещь из других вещей",
            userImage: UIImage(named: "userImage2")!,
            username: "Customize It!",
            nickname: "customize_it",
            postImage: UIImage(named: "Image9")!,
            tags: nil,
            numberOfLikes: 12,
            createdAt: "неделю назад"
        ),
        TutirialItemCellInfo(
            title: "Как правильно обклеить пиджак стразами",
            userImage: UIImage(named: "userImage3")!,
            username: "Philipp Bedrosovich Kirkorov",
            nickname: "philipp.da",
            postImage: UIImage(named: "Image10")!,
            tags: nil,
            numberOfLikes: 1000,
            createdAt: "месяц назад"
        ),
    ]
}

private extension TutorialsVC {
    func initialize() {
        view.backgroundColor = Colors.lightGray1.uiColor
        
        view.addSubview(coverView)
        coverView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(Constants.inset20 * 3)
            $0.height.equalTo(80)
            $0.width.equalTo(315)
            $0.centerX.equalToSuperview()
        }
        
        view.addSubview(headingLabel)
        headingLabel.snp.makeConstraints {
            $0.top.equalTo(coverView.snp.bottom).offset(Constants.inset20)
            $0.height.equalTo(44)
            $0.width.equalToSuperview().inset(Constants.inset15)
            $0.centerX.equalToSuperview()
        }
        
        tableView.backgroundColor = Colors.lightGray1.uiColor
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(PostTutorialSetCell.self, forCellReuseIdentifier: String(describing: PostTutorialSetCell.self))
        tableView.showsVerticalScrollIndicator = false
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.top.equalTo(headingLabel.snp.bottom).offset(Constants.inset20)
            $0.width.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(Constants.inset20)
        }
    }
}

extension TutorialsVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        postCards.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let post = postCards[indexPath.row]
        let postCardVC = TutorialVC()
        postCardVC.postCard = post
        postCardVC.configure(with: post)
        navigationController?.pushViewController(postCardVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = postCards[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostTutorialSetCell.self), for: indexPath) as! PostTutorialSetCell
        cell.configure(with: post)
        return cell
    }
    
}

