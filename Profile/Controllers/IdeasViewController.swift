//
//  IdeasVC.swift
//  Profile
//  Created by Арсений Гулевич  on 13.12.2023.
//

import SnapKit
import UIKit

class IdeasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
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
        image.image = UIImage(named: "pageCoverImageForIdeas")
        return image
    }()
    
    private var items: [PostITemType] = [
        .idea(IdeaItemCellInfo(
            userImage: UIImage(named: "userImage1")!,
            username: "Юзер Юзеровов",
            nickname: "@sexy_procrastinator",
            postImage: UIImage(named: "postImage1")!,
            tags: ["тэг1", "тэг2"],
            numberOfLikes: 12,
            comment: nil)),
        .idea(IdeaItemCellInfo(
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Владимир Путин",
            nickname: "@vlad.kgb.is.cool",
            postImage: UIImage(named: "Image3")!,
            tags: ["тэг8", "тэг3", "тэг2", "тэг20"],
            numberOfLikes: 12,
            comment: nil)),
        .idea(IdeaItemCellInfo(
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Псевдоним Фамилиевич",
            nickname: "@ewgrhetjky5_0",
            postImage: UIImage(named: "Image4")!,
            tags: ["тэг1", "тэг2"],
            numberOfLikes: 12,
            comment: nil)),
        .idea(IdeaItemCellInfo(
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Дикий Кринж",
            nickname: "@cringyguygoy",
            postImage: UIImage(named: "Image5")!,
            tags: ["тэг6", "тэг2", "тэг3", "тэг2", "тэг19"],
            numberOfLikes: 12,
            comment: nil)),
        .idea(IdeaItemCellInfo(
            userImage: UIImage(named: "userImage2")!,
            username: "Очередной Пользователь",
            nickname: "@andandand444me",
            postImage: UIImage(named: "Image6")!,
            tags: ["тэг14", "тэг5"],
            numberOfLikes: 5,
            comment: nil))
    ]
    
}

private extension IdeasViewController {
    func initialize() {
        view.backgroundColor = .red
       
        view.addSubview(coverView)
        coverView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(208)
            make.width.equalToSuperview()
        }
        
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(coverView.snp.bottom)
            make.height.equalTo(20)
            make.width.equalTo(20)
            make.centerX.equalToSuperview()
        }
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(PostIdeaSetCell.self, forCellReuseIdentifier: String(describing: PostIdeaSetCell.self))
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.top.equalTo(nextButton.snp.bottom)
        }
        
        
    }
    
}

extension IdeasViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        let ideaVC = IdeaViewController()
        ideaVC.item = item
        navigationController?.pushViewController(ideaVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        switch item {
            
        case .idea(let info):
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostIdeaSetCell.self), for: indexPath) as! PostIdeaSetCell
            cell.configure(with: info)
            return cell
            
        case .tutorial(let tutorial):
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostTutorialSetCell.self), for: indexPath) as! PostTutorialSetCell
            cell.configure(with: tutorial)
            return cell
            
        }
        
    }
}
