//
//  FoodDetailsVC.swift
//  Strada
//
//  Created by Tea Kupradze on 7/12/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodDetailsVC: UIViewController {

    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var foodTitleLbl: UILabel!
    @IBOutlet weak var foodPriceLbl: UILabel!
    @IBOutlet weak var foodDescriptionLbl: UILabel!

   var detales : NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}
