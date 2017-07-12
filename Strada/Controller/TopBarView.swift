//
//  TopBarView.swift
//  Strada
//
//  Created by Tea Kupradze on 7/12/17.
//  Copyright © 2017 Lemondo. All rights reserved.
//

import UIKit
protocol tabBarDelegate {
    func leftBtnClic()
}
class TopBarView: UIView {
    
    var delegate : tabBarDelegate?
    
    @IBOutlet weak var menuBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    @IBAction func menuBtnAction(_ sender: Any) {
        delegate?.leftBtnClic()
    }
}
