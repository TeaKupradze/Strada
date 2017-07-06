//
//  FoodIcon.swift
//  Strada
//
//  Created by Tea Kupradze on 7/4/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodIcon: NSObject {
    
    var foodImage : String!
    var foodName : String!
    
    
     init(withDictionary dictionary : Dictionary <String, Any>) {
        self.foodImage = dictionary ["img"] as! String
        self.foodName = dictionary ["name"] as! String
    }

}
