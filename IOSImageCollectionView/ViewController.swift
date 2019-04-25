//
//  ViewController.swift
//  IOSImageCollectionView
//
//  Created by student on 4/24/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView : UICollectionView!
    var colectionArr : [String] = ["1","2","3","4"]
    let titles = [("Jiji"),("Iselda"),("Eater"),("Fool"),("Millibelle"),("Nailsmith"),("Lemm"),("Salubra"),("Sly"),("Jinn"),("Stag"),("Tuk"),("Mato"),("Oro"),("Sheo"),("Cloth"),("Cornifer"),("Hornet"),("Mushroom"),("Quirrel"),("Tiso"),("Zote")]
    
    
    let des = [
                   (""),
                    (""),
                     (""),
                      (""),
                       (""),
                        (""),
                         (""),
                          (""),
                           (""),
                            (""),
                             (""),
                              (""),
                               (""),
                                (""),
                                 (""),
                                  (""),
                                   (""),
                                    (""),
                                     (""),
                                      (""),
                                       (""),
                                       
                
               ]
    
    let images = [#imageLiteral(resourceName: "Jiji_Circle"),#imageLiteral(resourceName: "Iselda_Circle"),#imageLiteral(resourceName: "Legeater_Circle"),#imageLiteral(resourceName: "Little_Fool_Circle"),#imageLiteral(resourceName: "Millibelle_Circle"),#imageLiteral(resourceName: "Nailsmith_Circle-1"),#imageLiteral(resourceName: "Lemm_Circle"),#imageLiteral(resourceName: "Salubra_Circle"),#imageLiteral(resourceName: "Sly_Circle-1"),#imageLiteral(resourceName: "Jinn_Circle"),#imageLiteral(resourceName: "Stag_Circle"),#imageLiteral(resourceName: "Tuk_Circle"),#imageLiteral(resourceName: "Mato_Circle"),#imageLiteral(resourceName: "Oro_Circle"),#imageLiteral(resourceName: "Sheo_Circle"),#imageLiteral(resourceName: "Cloth_Circle-2"),#imageLiteral(resourceName: "Cornifer_Circle"),#imageLiteral(resourceName: "Hornet_Icon"),#imageLiteral(resourceName: "Mister_Mushroom_Circle"),#imageLiteral(resourceName: "Quirrel_Circle-3"),#imageLiteral(resourceName: "Tiso_Circle"),#imageLiteral(resourceName: "Zote_Circle")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
       collectionView.delegate = self
        collectionView.dataSource = self
    
    
        
    }
   
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return titles.count
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let cellIndex = indexPath.item
        cell.delBtnView.isHidden = true
        cell.edutBtnView.isHidden = true
        
        cell.imageView.image = images[cellIndex]
        cell.titleView.text = titles[cellIndex]
        cell.detailsView.text = des[cellIndex]
        
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.backgroundColor = UIColor.gray.cgColor
        cell.backgroundColor = UIColor.orange
        
        cell.layer.shadowColor = UIColor.darkGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        return cell
    }
   
    
    }
    
    


