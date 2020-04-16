//
//  sectionHeader.swift
//  CollectionView
//
//  Created by Muhammed on 4/15/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import UIKit

class sectionHeader: UICollectionReusableView {
    
    @IBOutlet private weak var titleLable : UILabel!
    @IBOutlet private weak var countLable : UILabel!
    @IBOutlet private weak var flagImage : UIImageView!
    
    var section : Section! {
        didSet{
            titleLable.text = section.title
            countLable.text = "\(section.count)"
            flagImage.image = UIImage(named: section.title ?? "")
            
        }
    }
    

}
