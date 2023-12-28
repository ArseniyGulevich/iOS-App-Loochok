//
//  IdeasVC.swift
//  Profile
//  Created by Арсений Гулевич  on 13.12.2023.
//

import SnapKit
import UIKit
import CoreData

class IdeasViewController: UIViewController {
    
//    static var applicationDelegat = UIApplication.shared.delegate as! AppDelegate
//    let context = applicationDelegat.persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
//        addData(name: "Ivanov")
//        let res: [User] = getData()
//        print(res[0].name, res[0].id)
    }
    
//    func addData(name: String) {
//        if let entityUser = NSEntityDescription.entity(forEntityName: "User", in: context) {
//            var newUser = NSManagedObject(entity: entityUser, insertInto: context)
//            newUser.setValue(name, forKey: "name")
//            newUser.setValue(RandomValues.getRandomId(), forKey: "id")
//
//            try! context.save()
//            print("Added: \(name)")
//        }
//    }
    
//    func getData() -> [User] {
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
//        request.returnsObjectsAsFaults = false
//        let result = try! context.fetch(request) as [User]
//        return result
//    }
//
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
    
    private let headingLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.heading3Font
        label.textColor = Colors.lightGray1.uiColor
        label.text = " Что посмотрим?".uppercased()
        label.backgroundColor = Colors.black.uiColor
        return label
    }()
    
//    let coverView: CoverView
    
    private var posts: [PostITemType] = [
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
    
    private var postCards: [IdeaItemCellInfo] = [
        IdeaItemCellInfo(
            userImage: UIImage(named: "userImage1")!,
            username: "Юзер Юзеровов",
            nickname: "@sexy_procrastinator",
            postImage: UIImage(named: "postImage1")!,
            tags: ["тэг1", "тэг2"],
            numberOfLikes: 12,
            comment: nil),
        IdeaItemCellInfo(
            userImage: UIImage(named: "userImage1")!,
            username: "Юзер Юзеровов",
            nickname: "@sexy_procrastinator",
            postImage: UIImage(named: "postImage1")!,
            tags: ["тэг1", "тэг2"],
            numberOfLikes: 12,
            comment: nil),
        IdeaItemCellInfo(
            userImage: UIImage(named: "userImage1")!,
            username: "Юзер Юзеровов",
            nickname: "@sexy_procrastinator",
            postImage: UIImage(named: "postImage1")!,
            tags: ["тэг1", "тэг2"],
            numberOfLikes: 12,
            comment: nil),
        
    ]
    
}

private extension IdeasViewController {
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
//            $0.leading.equalToSuperview()
            $0.height.equalTo(44)
            $0.width.equalToSuperview().inset(Constants.inset15)
            $0.centerX.equalToSuperview()
        }
        
//        view.addSubview(nextButton)
//        nextButton.snp.makeConstraints { make in
//            make.top.equalTo(coverView.snp.bottom)
//            make.height.equalTo(20)
//            make.width.equalTo(20)
//            make.centerX.equalToSuperview()
//        }
        
        tableView.backgroundColor = Colors.lightGray1.uiColor
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(PostIdeaSetCell.self, forCellReuseIdentifier: String(describing: PostIdeaSetCell.self))
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

extension IdeasViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        postCards.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPostCard = postCards[indexPath.row]
        let postCardVC = PostCardViewController()
        postCardVC.postCard = selectedPostCard
        navigationController?.pushViewController(postCardVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = postCards[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostIdeaSetCell.self), for: indexPath) as! PostIdeaSetCell
        cell.configure(with: post)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let item = posts[indexPath.row]
//
//        switch item {
//
//        case .idea(let info):
//            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostIdeaSetCell.self), for: indexPath) as! PostIdeaSetCell
//            cell.configure(with: info)
//            return cell
//
//        case .tutorial(let tutorial):
//            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostTutorialSetCell.self), for: indexPath) as! PostTutorialSetCell
//            cell.configure(with: tutorial)
//            return cell
//        }
//    }
    
}
