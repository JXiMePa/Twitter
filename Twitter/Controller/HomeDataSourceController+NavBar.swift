//
//  HomeDataSourceController+NavBar.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import UIKit

extension  HomeDataSourceController {
    
     func setupNavigationBarItems() {
        
        setupRemainingNavItem()
        setupLeftNavItem()
        setupRightNavItems()
    }
    
    private func setupRemainingNavItem() {
        let titleView = UIImageView(image: #imageLiteral(resourceName: "title_icon"))
        titleView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleView
        
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.isTranslucent = false
        
        //remove line after navBar
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = ConstantsValue.lineGrey
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, heightConstant: 0.5)
    }
    
    private func setupLeftNavItem() {
        let followButton = UIBarButtonItem(image: #imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItems = [followButton]
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
    }
}
