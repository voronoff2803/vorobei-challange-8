//
//  ViewController.swift
//  vorobei-challange-1
//
//  Created by Alexey Voronov on 03.07.2023.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let avatarImageView = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
        avatarImageView.tintColor = .lightGray
        
        let scrollView = UIScrollView(frame: view.bounds)
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2)
        view.addSubview(scrollView)
                
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        let largeView = navigationBar.subviews[1]
        guard let titleView = largeView.subviews.first else { return }
        
        largeView.addSubview(avatarImageView)
        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            avatarImageView.rightAnchor.constraint(equalTo: largeView.layoutMarginsGuide.rightAnchor, constant: 0),
            avatarImageView.centerYAnchor.constraint(equalTo: titleView.centerYAnchor),
            avatarImageView.heightAnchor.constraint(equalToConstant: 36),
            avatarImageView.widthAnchor.constraint(equalToConstant: 36)
        ])
    }
}
