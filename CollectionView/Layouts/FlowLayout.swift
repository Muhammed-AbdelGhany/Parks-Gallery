//
//  FlowLayout.swift
//  CollectionView
//
//  Created by Muhammed on 4/16/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import UIKit

class FlowLayout: UICollectionViewFlowLayout {

    
    var addedItemIP : IndexPath?
    var deletedItemsIP : [IndexPath]?
    
    override func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        
        guard let attributes = super.initialLayoutAttributesForAppearingItem(at: itemIndexPath), let addedIP = addedItemIP ,  addedIP == itemIndexPath
            else{
            
            return nil
        }
        attributes.center = CGPoint(x: collectionView!.frame.width - 23.5, y: -24.5)
        attributes.alpha = 1.0
        attributes.transform = CGAffineTransform(scaleX: 0.15, y: 0.15)
        attributes.zIndex = 5
        
        return attributes
    }
    
    
    override func finalLayoutAttributesForDisappearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        
        guard let attributes = super.finalLayoutAttributesForDisappearingItem(at: itemIndexPath) , let deletedIP = deletedItemsIP , deletedIP.contains(itemIndexPath)
            else{
                return nil
        }
        
        attributes.alpha = 1.0
        attributes.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        attributes.zIndex = -1
        
        return attributes
    }
}
