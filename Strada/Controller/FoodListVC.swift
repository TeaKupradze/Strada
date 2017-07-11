//
//  FoodListVC.swift
//  Strada
//
//  Created by Tea Kupradze on 7/6/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodListVC: UIViewController {
    
    var FoodListData = [NSDictionary] ()
    var itemsId : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFoodPlistData()
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
        
}
