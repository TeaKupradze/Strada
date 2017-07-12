//
//  FoodListVC.swift
//  Strada
//
//  Created by Tea Kupradze on 7/6/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var FoodListData = [NSDictionary] ()
    var itemsId : String?
    //var detales : NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFoodPlistData()
        //addTop Bar
        let topBar = Bundle.main.loadNibNamed("TopBar", owner: self, options: nil)? [0] as! TopBarView
        topBar.delegate = self
        self.view.addSubview(topBar)
        //change image
        topBar.menuBtn.setImage(UIImage(named: "back"), for: .normal)
        
    }
    //Status BarStyle
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    func getFoodPlistData (){
        let path = Bundle.main.path(forResource: "FoodList", ofType: "plist")
        let arrayObj = NSArray (contentsOfFile: path!)
        for category  in arrayObj! {
            let categoryItem = category as! NSDictionary
            if itemsId == (categoryItem["id"] as! String){
                for categoryItems in categoryItem["categoryList"] as! NSArray{
                    FoodListData.append(categoryItems as! NSDictionary)}
            }
         }
       }
}
extension FoodListVC: tabBarDelegate{
        func leftBtnClic() {
        navigationController?.popViewController(animated: true)
    }
}
extension FoodListVC : UITableViewDelegate,UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return FoodListData.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "xxxTableCell", for: indexPath) as! FoodListVCTableViewCell
            let obj = self.FoodListData[indexPath.row]
            cell.foodImg.image = UIImage(named: (obj ["img"] as! String))
            cell.priceLbl.text = obj ["price"]  as? String
            cell.titleLbl.text = obj ["title"]  as? String
            cell.descriptionLbl.text = obj ["description"] as? String
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let foodDetailsIndex =  FoodListData[indexPath.row]
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "xxxDetails") as! FoodDetailsVC
        vc.detales = foodDetailsIndex
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        //self.presentingViewController(vc,animated: true, completion: nil)
    
        
    
    }
}
