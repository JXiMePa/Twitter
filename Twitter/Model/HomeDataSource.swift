//
//  HomeDataSource.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    
    let users:[User] = {
        let someUser = User(name: "NameUser", userName: "@testUser", bioText: "Some text: Xxxxxx", profileImage: #imageLiteral(resourceName: "profile_image"))
        let rayUser = User(name: "NameUser 2", userName: "@reyUser", bioText: "Rey text: Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx", profileImage: #imageLiteral(resourceName: "ray_profile_image"))
        let kindleCourseUser = User(name: "Kindle Course", userName: "@kindleCourse", bioText: "BEGEEN ->> xxxxxxx xxxxx xxxxxx xxxxxx xxxxxxx xxxxxxxx xxxxxxxx xxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx <<-END", profileImage: #imageLiteral(resourceName: "profile_image"))
        return [someUser, rayUser, kindleCourseUser]
    }()
    
    let tweets: [Tweet] = {
        let someUser = User(name: "NameUser", userName: "@testUser", bioText: "Some text: Xxxxxx", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let tweet = Tweet(user: someUser, message: "BEGEEN ->> xxxxxxx xxxxx xxxxxx xxxxxx xxxxxxx xxxxxxxx xxxxxxxx xxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx <<-END")
        
        let tweet2 = Tweet(user: someUser, message: "BEGEEN2 ->> xxxxxxx xxxxx xxxxxx xxxxxx xxxxxxx xxxxxxxx xxxxxxxx xxxx Xxxxxx xxxx xxx xxxxxxx xxx xxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxx xxxxxx xxxxx xxxxxxxxx xxxxxx xxxxxxxxx xxxxxxx <<-END2")
       return [tweet, tweet2]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self] //not need registration cell class
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
}

