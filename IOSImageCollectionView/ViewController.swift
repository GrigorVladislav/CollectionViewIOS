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
   
    let titlesMerchants = [("Jiji"),("Iselda"),("Eater"),("Fool"),("Millibelle"),("Nailsmith"),("Lemm"),("Salubra"),("Sly"),("Jinn"),("Stag"),("Tuk")]
                  let titlesNailmasters = [("Mato"),("Oro"),("Sheo")]
                  
                        let titlesWanderers = [("Cloth"),("Cornifer"),("Hornet"),("Mushroom"),("Quirrel"),("Tiso"),("Zote")]
    
    
    let desMerchants = [
                   ("Residents of Dirtmouth have long pondered on a mysterious stone door at the base of the peak beyond their graveyard."),
                    ("She will appear in her store in Dirtmouth after the purchase of a map from Cornifer or the defeat of False Knight."),
                     ("A hermit Vendor found in Fungal Wastes near the entrance to the Forgotten Crossroads."),
                      ("Found chained up, hanging upside down in the Colosseum of Fools."),
                       ("Geo deposited in this bank is retained upon death and can be withdrawn at any time."),
                        ("When The Knight enters his smithy, the Nailsmith at first mistakes them for somebody else."),
                         ("Relic Seeker Lemm makes his home in a tall tower of the City of Tears, before the fountain, right from a lift shortcut."),
                          ("Salubra is a slug Merchant found in the South-East part of the Forgotten Crossroads. "),
                           ("Initially found in a hovel in the small village accessible after defeating Gruz Mother in the Forgotten Crossroads, slowly succumbing to The Infection."),
                            ("Steel Soul Jinn is an NPC exclusive to Steel Soul Mode, replacing Confessor Jiji in the cave at the east end of Dirtmouth"),
                             ("The Last Stag is a large stag beetle that transports The Knight among various Stag Stations in Hallownest."),
                              ("Found scavenging in the Royal Waterways, behind a breakable wall in the upper-right corner of the area.")]
                              
                              
                          let desNailmasters = [("Nailmaster Mato is one of three Nailmasters that teach Nail Arts."),
                                ("Nailmaster Oro is one of three Nailmasters that teach Nail Arts."),
                                 ("Nailmaster Sheo is one of three Nailmasters that teach Nail Arts.")]
                                 
                                    let desWanderers = [("A cicada who set out to Hallownest in order to become a true warrior, and sees The Knight as an inspiration."),
                                    ("When Cornifer was first hatched, he wandered off right away, leaving his siblings and his mother behind."),
                                        ("Mysterious protector of Hallownest’s ruins. She wields a needle and thread with deadly prowess."),
                                            ("Mister Mushroom is a talking mushroom found through various locations in Hallownest"),
                                                ("Quirrel is an observer, not a warrior, but he knows the Kingdom's dangers and has some skills with a Nail."),
                                                    ("Tiso is an adventurer who seeks the Colosseum of Fools for the sake of a challenge. "),
                                                    ("He came to the Kingdom to fulfill a promise; this is ultimately revealed to be a promise of glory for himself.")]
                                       
                
    
    
    let imagesMerchants = [#imageLiteral(resourceName: "Jiji_Circle"),#imageLiteral(resourceName: "Iselda_Circle"),#imageLiteral(resourceName: "Legeater_Circle"),#imageLiteral(resourceName: "Little_Fool_Circle"),#imageLiteral(resourceName: "Millibelle_Circle"),#imageLiteral(resourceName: "Nailsmith_Circle-1"),#imageLiteral(resourceName: "Lemm_Circle"),#imageLiteral(resourceName: "Salubra_Circle"),#imageLiteral(resourceName: "Sly_Circle-1"),#imageLiteral(resourceName: "Jinn_Circle"),#imageLiteral(resourceName: "Stag_Circle"),#imageLiteral(resourceName: "Tuk_Circle")]
            let imagesNailmasters = [#imageLiteral(resourceName: "Mato_Circle"),#imageLiteral(resourceName: "Oro_Circle"),#imageLiteral(resourceName: "Sheo_Circle")]
                 let imagesWanderers = [#imageLiteral(resourceName: "Cloth_Circle-2"),#imageLiteral(resourceName: "Cornifer_Circle"),#imageLiteral(resourceName: "Hornet_Icon"),#imageLiteral(resourceName: "Mister_Mushroom_Circle"),#imageLiteral(resourceName: "Quirrel_Circle-3"),#imageLiteral(resourceName: "Tiso_Circle"),#imageLiteral(resourceName: "Zote_Circle")]
    let headerTitles = ["Merchants", "Nailmasters", "Wanderers"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
       collectionView.delegate = self
        collectionView.dataSource = self
    
    
        
    }
   
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (section == 0){
            return titlesMerchants.count
        }else if (section == 1){
            return  titlesNailmasters.count
        }
            return titlesWanderers.count
        }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let cellIndex = indexPath.item
        let sectionIndex = indexPath.section
        cell.delBtnView.isHidden = true
        cell.edutBtnView.isHidden = true
        if(sectionIndex == 0){
            //cell.header.text = headerTitles[sectionIndex]
            cell.imageView.image = imagesMerchants[cellIndex]
            cell.titleView.text = titlesMerchants[cellIndex]
            cell.detailsView.text = desMerchants[cellIndex]
        }else if(sectionIndex == 1){
            cell.imageView.image = imagesNailmasters[cellIndex]
            cell.titleView.text = titlesNailmasters[cellIndex]
            cell.detailsView.text = desNailmasters[cellIndex]
        }else if(sectionIndex == 2){
            cell.imageView.image = imagesWanderers[cellIndex]
            cell.titleView.text = titlesWanderers[cellIndex]
            cell.detailsView.text = desWanderers[cellIndex]
        }else{
            return cell
        }
        
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
    



