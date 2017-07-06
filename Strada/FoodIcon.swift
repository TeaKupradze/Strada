//
//  FoodIcon.swift
//  Strada
//
//  Created by Tea Kupradze on 7/6/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodIcon: NSObject {
    
    var FoodImage : String!
    var FoodName : String!
    
    init(withDictionary dictionary : Dictionary <String, Any> ) {
        self.FoodImage = dictionary ["img"] as! String
        self.FoodName = dictionary ["name"] as! String
        
        
    }
}
