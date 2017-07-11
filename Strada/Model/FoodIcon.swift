//
//  FoodIcon.swift
//  Strada
//
//  Created by Tea Kupradze on 7/6/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodIcon: NSObject {
    
    var FoodIcon : String!
    var CategoryName : String!
    var categoryID : String!
    
    init(withDictionary dictionary : Dictionary <String, Any> ) {
        self.FoodIcon = dictionary ["img"] as! String
        self.CategoryName = dictionary ["name"] as! String
        self.categoryID = dictionary ["id"] as! String
       
    }
}
