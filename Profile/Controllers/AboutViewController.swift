//
//  AboutViewController.swift
//  Profile
//
import UIKit

class AboutViewController: UIViewController
{
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "О проекте"
        label.textColor = Colors.black.uiColor
        label.font = Constants.fontH1
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.lightYellow.uiColor
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.pinTop(to: self.view.safeAreaLayoutGuide.topAnchor, Constants.inset15)
        titleLabel.pinLeft(to: self.view.safeAreaLayoutGuide.leadingAnchor, Constants.inset15)
        titleLabel.pinCenterX(to: self.view)
        
        let scrollView = UIScrollView()
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.pinTop(to: titleLabel.bottomAnchor, Constants.inset8)
        scrollView.pinBottom(to: self.view.safeAreaLayoutGuide.bottomAnchor)
        
        scrollView.pinLeft(to: self.view.safeAreaLayoutGuide.leadingAnchor, Constants.inset15)
        scrollView.pinRight(to: self.view.safeAreaLayoutGuide.trailingAnchor, Constants.inset15)
        
        let aboutLabel = UILabel()
        aboutLabel.numberOfLines = 0
        aboutLabel.textColor = Colors.black.uiColor
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutLabel.font = Constants.fontP
        aboutLabel.text = """
        Loochok — медиа-сервис про кастомизацию предметов одежды, обуви и аксессуаров.
        Здесь вы найдёте ленту с идеями для кастомов,
        а также туториалы: как сделать тот или иной кастом.
        """
        aboutLabel.sizeToFit()
        scrollView.addSubview(aboutLabel)
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: aboutLabel.frame.height)
    }
    
}
