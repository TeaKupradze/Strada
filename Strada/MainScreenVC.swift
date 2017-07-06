//
//  MainScreenVC.swift
//  Strada
//
//  Created by Tea Kupradze on 7/4/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class MainScreenVC: UIViewController {
    
    var FoodData = [FoodIcon]()

    override func viewDidLoad() {
        super.viewDidLoad()
        getPlistData()
    }
    
    func getPlistData(){
       let path = Bundle.main.path(forResource: "FoodIcon", ofType: "plist")
        let arryObj = NSArray (contentsOfFile: path!) as! [Dictionary <String , Any>]
        for oneObj in arryObj {
            let oneData = FoodIcon (withDictionary : oneObj)
            FoodData.append(oneData)
        }
    }
}
extension MainScreenVC : UICollectionViewDataSource , UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FoodData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "xxxCell", for: indexPath) as! FoodCell
        let obj = self.FoodData[indexPath.item]
        cell.iconImg.image = UIImage(named: obj.FoodImage)
        cell.nameLbl.text = obj.FoodName
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width : 187, height :177)
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
}
