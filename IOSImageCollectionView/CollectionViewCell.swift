//
//  CollectionViewCell.swift
//  IOSImageCollectionView
//
//  Created by student on 4/24/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailsView: UILabel!
    @IBOutlet weak var delBtnView: UIButton!
    @IBOutlet weak var edutBtnView: UIButton!
    @IBOutlet weak var header: UILabel!
    
    @IBAction func delAction(_ sender: Any) {
    }
    
    @IBAction func edutAction(_ sender: Any) {
    }
    
    
    
    
}
