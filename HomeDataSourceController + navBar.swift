//
//  HomeDataSourceController + navBar.swift
//  Twitter: 01
//
//  Created by Sneha gindi on 16/03/17.
//  Copyright © 2017 Sneha Gindi. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
 
    func setUpNavigationBarItems() {
        
        setUpLeftNavItems()
        setUpRightNavItems()
        setUpRemainingNavItems()
        
    }
    
    private func setUpRemainingNavItems() {
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "Twitter_Logo_Blue"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
        
    }
    
    private func setUpLeftNavItems() {
        
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "FollowButton").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x:  0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
        
    }
    
    private func setUpRightNavItems() {
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "SearchButton").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "ComposeTwitter").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
        
    }
    
}
