//
//  TweetCell.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
    
    //MARK: AttributedString
    override var datasourceItem: Any? {
        didSet {
            guard let tweet = datasourceItem as? Tweet else { return }
            
            let attributedText = NSMutableAttributedString(string: tweet.user.name, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16)])
            
            let userNameString = " \(tweet.user.userName)\n"
            
            attributedText.append(NSMutableAttributedString(string: userNameString, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 15), NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1) ]))
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 10
            let range = NSMakeRange(0, attributedText.string.count)
            
            attributedText.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: range)
         
            attributedText.append(NSMutableAttributedString(string: tweet.message, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 15)]))
            
            messageTextView.attributedText = attributedText
        }
    }
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 5
        iv.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let messageTextView: UITextView = {
        //because text alignment upper Left
        let tv = UITextView()
        return tv
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = ConstantsValue.lineGrey
        
        addSubview(profileImageView)
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, topConstant: 12, leftConstant: 12, widthConstant: 50, heightConstant: 50)
        
        addSubview(messageTextView)
        messageTextView.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
