//
//  UserCell.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import LBTAComponents

struct ConstantsValue {
    static let lineGrey = UIColor(r: 230, g: 230, b: 230)
    static let twitterBlue = UIColor(r: 61, g: 167, b: 244)
    static let bioTextFontSize: CGFloat = 15

}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            //print(datasourceItem) //return users[indexPath.item] in HomeDataSource
            guard let user = datasourceItem as? User else { return }
            nameLabel.text = user.name
            userNameLabel.text = user.userName
            bioTextView.text = user.bioText
            profileImageView.image = user.profileImage
        }
    }
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(r: 130, g: 130, b: 130)
        //in LBTAComponents
        return label
    }()
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 5
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let bioTextView: UITextView = {
       let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: ConstantsValue.bioTextFontSize)
        tv.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        return tv
    }()
    
    let followButton: UIButton = {
       let button = UIButton()
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        button.setTitleColor(ConstantsValue.twitterBlue, for: .normal)
        button.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        button.imageView?.contentMode = .scaleAspectFit
        button.layer.cornerRadius = 5
        button.layer.borderColor = ConstantsValue.twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.layer.masksToBounds = true
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = ConstantsValue.twitterBlue
        
        addSubview(profileImageView)
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, topConstant: 12, leftConstant: 12, widthConstant: 50, heightConstant: 50)
        
        addSubview(followButton)
        followButton.anchor(topAnchor, right: self.rightAnchor, topConstant: 12, rightConstant: 12, widthConstant: 120, heightConstant: 34)
        
        addSubview(nameLabel)
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, right: followButton.leftAnchor, leftConstant: 4, rightConstant: 12, heightConstant: 20)
        
        addSubview(userNameLabel)
        userNameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, right: nameLabel.rightAnchor , topConstant: 1, heightConstant: 20)
        
        addSubview(bioTextView)
        bioTextView.anchor(userNameLabel.bottomAnchor, left: userNameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4)
    }
    
}




