//
//  ViewController.swift
//  Twitter
//
//  Created by Tarasenko Jurik on 08.07.2018.
//  Copyright © 2018 Tarasenko Jurik. All rights reserved.
//

import LBTAComponents


class HomeDataSourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        collectionView?.backgroundColor = UIColor(r: 232, g: 236, b: 241)
        
        let homeDatasource = HomeDataSource()
        self.datasource = homeDatasource
        //.datasource - "var" in LBTAComponents
        
        setupNavigationBarItems()
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User {
        
        let size = CGSize(width: view.frame.width - 12 - 50 - 12,
                          height: 1000)
            
        let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
            
        let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: options, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: ConstantsValue.bioTextFontSize)], context: nil)
        
        
        return CGSize(width: view.frame.width, height: estimatedFrame.height + 20 + 20 + 12 + 12)
        }
        
        return CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        if section == 1 { return .zero }// del HeaderInSection
        
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
         if section == 1 { return .zero }//del FooterInSection
        
        return CGSize(width: view.frame.width, height: 64)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

