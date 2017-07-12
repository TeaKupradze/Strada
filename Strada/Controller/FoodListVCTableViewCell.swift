//
//  FoodListVCTableViewCell.swift
//  Strada
//
//  Created by Tea Kupradze on 7/6/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodListVCTableViewCell: UITableViewCell {
    
    @IBOutlet weak var conteinerView: UIView!
    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        self.foodImg.layer.cornerRadius = 4.0
        self.foodImg.clipsToBounds = true
        
        self.conteinerView.layer.shadowColor =  UIColor.darkGray.cgColor
        self.conteinerView.layer.shadowOffset =  CGSize(width: 2.0, height: 2.0 )
        self.conteinerView.layer.shadowOpacity = 0.8
        self.conteinerView.layer.shadowRadius = 4.0
        self.conteinerView.layer.cornerRadius = 4.0
        
        
    
    }

}
