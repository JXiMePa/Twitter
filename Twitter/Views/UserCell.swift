//
//  UserCell.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import LBTAComponents

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "TEST ->"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow
        
        addSubview(nameLabel)
        nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
    }
    
}
