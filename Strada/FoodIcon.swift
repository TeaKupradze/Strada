//
//  FoodIcon.swift
//  Strada
//
//  Created by Tea Kupradze on 7/6/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit

class FoodIcon: NSObject {
    
    var img : String!
    var name : String!
    
    init(withDictionary dictionary : Dictionary <String, Any> ) {
        self.img = dictionary ["img"] as! String
        self.name = dictionary ["name"] as! String
        
        
    }
}
