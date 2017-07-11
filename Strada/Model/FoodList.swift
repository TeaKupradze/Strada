//
//  FoodList.swift
//  Strada
//
//  Created by Tea Kupradze on 7/6/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodList: NSObject {
    var foodImage: String!
    var foodPrice: String!
    var foodTitle: String!
    var foodDescription: String!
    var itemID : String!
    
    
    init(withDictionary dictionary : Dictionary <String,Any>) {
        self.foodImage = dictionary ["img"] as! String
        self.foodPrice = dictionary ["price"] as! String
        self.foodTitle = dictionary ["title"] as! String
        self.foodDescription = dictionary ["description"] as! String
        self.itemID = dictionary ["id"] as! String
            }
}
