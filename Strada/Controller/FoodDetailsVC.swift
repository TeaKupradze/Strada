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
        foodImg.image = UIImage(named : detales! ["img"] as! String)
        foodTitleLbl.text = detales! ["title"] as? String
        foodPriceLbl.text = detales! ["price"] as? String
        foodDescriptionLbl.text = detales! ["description"] as? String
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
