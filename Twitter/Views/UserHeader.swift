//
//  UserHeader.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    
    let textLabel: UILabel = {
       let label = UILabel()
        label.text = "XXXXXXXX UserHeader XXXXXXX"
        label.minimumScaleFactor = 14
        label.font = UIFont.systemFont(ofSize: 18)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = ConstantsValue.twitterBlue
        
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, leftConstant: 12)
        
    }
}
