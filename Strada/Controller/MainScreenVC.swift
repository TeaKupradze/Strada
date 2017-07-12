//
//  MainScreenVC.swift
//  Strada
//
//  Created by Tea Kupradze on 7/4/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class MainScreenVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var FoodData = [FoodIcon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getIconPlistData()
        //changeBg
        let bgImage = UIImageView();
        bgImage.image = UIImage(named: "bg");
        bgImage.alpha = 0.7
        self.collectionView?.backgroundView = bgImage
        //addTopBar
        let topBar = Bundle.main.loadNibNamed("TopBar", owner: self, options: nil)? [0] as! TopBarView
        self.view.addSubview(topBar)
        topBar.delegate = self
}
        //statusBarStyle
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
}
    func getIconPlistData(){
       let path = Bundle.main.path(forResource: "FoodIcon", ofType: "plist")
        let arryObj = NSArray (contentsOfFile: path!) as! [Dictionary <String , Any>]
        for oneObj in arryObj {
            let oneData = FoodIcon (withDictionary : oneObj)
            FoodData.append(oneData)
        }
    }
}
extension MainScreenVC: tabBarDelegate{

    func leftBtnClic() {
        
    }
}
extension MainScreenVC : UICollectionViewDataSource , UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FoodData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "xxxCell", for: indexPath) as! FoodCell
        let obj = self.FoodData[indexPath.item]
        cell.iconImg.image = UIImage(named: obj.FoodIcon)
        cell.nameLbl.text = obj.CategoryName
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width : 187, height :177)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let clickdItemId = FoodData[indexPath.item]
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "xxxVC") as! FoodListVC
        vc.itemsId = clickdItemId.categoryID
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
