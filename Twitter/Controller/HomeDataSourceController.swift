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
        
        let homeDatasource = HomeDataSource()
        self.datasource = homeDatasource
        //.datasource - "var" in LBTAComponents
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    
}

