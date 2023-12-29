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







  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
