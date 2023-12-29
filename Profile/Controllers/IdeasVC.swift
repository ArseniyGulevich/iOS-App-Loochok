//
//  IdeasVC.swift
//  Profile
//  Created by Арсений Гулевич  on 13.12.2023.
//

import SnapKit
import UIKit
import CoreData

class IdeasVC: UIViewController {
    
//    static var applicationDelegat = UIApplication.shared.delegate as! AppDelegate
//    let context = applicationDelegat.persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        tableView.delegate = self
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
        
    private var postCards: [IdeaItemCellInfo] = [
        IdeaItemCellInfo(
            userImage: UIImage(named: "userImage1")!,
            username: "Ivanchai",
            nickname: "@vno_vno",
            postImage: UIImage(named: "Image7")!,
            tags: ["тэг1", "тэг15"],
            numberOfLikes: 12,
            comment: nil,
            title: "Так-так-так!",
            description: "Вот такой кастом",
            createdAt: "сегодня в 10:05"),
        IdeaItemCellInfo(
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Елена Донских",
            nickname: "@lena.don",
            postImage: UIImage(named: "Image6")!,
            tags: ["тэг13", "тэг2"],
            numberOfLikes: 12,
            comment: nil,
            title: "Кастом кепочка",
            description: "Эта кепочка просто секси!",
            createdAt: "22 декабря"),
        IdeaItemCellInfo(
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Gjkmpjdfntkm",
            nickname: "@gjkmpj0j",
            postImage: UIImage(named: "postImage2")!,
            tags: ["тэг14", "тэг32", "тэг10", "тэг12", "тэг17", "тэг37"],
            numberOfLikes: 12,
            comment: nil,
            title: "Название, тайтл тут",
            description: nil,
            createdAt: "сегодня в 4:15"),
        IdeaItemCellInfo(
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Максим Шуфутинский",
            nickname: "@max_baza_custom",
            postImage: UIImage(named: "Image3")!,
            tags: ["тэг1", "тэг2"],
            numberOfLikes: 12,
            comment: nil,
            title: "Название здесь",
            description: "Описание идеи, доп. текстовая инфа",
            createdAt: "сегодня в 10:20"),
        IdeaItemCellInfo(
            userImage: UIImage(named: "userImage1")!,
            username: "Anastasia_Tur",
            nickname: "@ansts.t",
            postImage: UIImage(named: "Image4")!,
            tags: ["тэг0"],
            numberOfLikes: 12,
            comment: nil,
            title: "Some title",
            description: nil,
            createdAt: "сегодня в 11:09"),
        IdeaItemCellInfo(
            userImage: UIImage(named: "DefaultAvatar")!,
            username: "Volume",
            nickname: "@v0lume",
            postImage: UIImage(named: "Image5")!,
            tags: ["тэг0", "тэг8"],
            numberOfLikes: 12,
            comment: nil,
            title: "Some title here",
            description: "Дескрипшн",
            createdAt: "позавчера"),
        IdeaItemCellInfo(
            userImage: UIImage(named: "userImage2")!,
            username: "Имя пользователя",
            nickname: "@imja.polzovoltelja",
            postImage: UIImage(named: "postImage1")!,
            tags: ["тэг6", "тэг5"],
            numberOfLikes: 12,
            comment: nil,
            title: "Some title",
            description: nil,
            createdAt: "год назад")
    ]
    
}

private extension IdeasVC {
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

extension IdeasVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        postCards.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let post = postCards[indexPath.row]
        let postCardVC = IdeaVC()
        postCardVC.postCard = post
        postCardVC.configure(with: post)
        navigationController?.pushViewController(postCardVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = postCards[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostIdeaSetCell.self), for: indexPath) as! PostIdeaSetCell
        cell.configure(with: post)
        return cell
    }
    
}
