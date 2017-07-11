//
//  FoodCell.swift
//  Strada
//
//  Created by Tea Kupradze on 7/4/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodCell: UICollectionViewCell {
    
    @IBOutlet weak var iconImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var img : FoodIcon?
    var name : FoodIcon?
}
