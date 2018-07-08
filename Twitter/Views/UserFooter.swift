//
//  UserFooter.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import LBTAComponents

class UserFooter: DatasourceCell {
        
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "HHHHHHHH UserFooter HHHHHHHHH"
        label.textColor = ConstantsValue.twitterBlue
        label.font = UIFont.systemFont(ofSize: 18)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        addSubview(backgroundView)
        backgroundView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, bottomConstant: 14)
        
        backgroundView.addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, leftConstant: 12, bottomConstant: 14)
    }
}
