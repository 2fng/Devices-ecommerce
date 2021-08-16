//
//  NavbarButton.swift
//  Lamp Product
//
//  Created by Hua Son Tung on 16/08/2021.
//

import UIKit

extension UIButton {

    func navBarButtonDesign(imageName: String) {
        self.setImage(UIImage(systemName: imageName), for: .normal)
        self.tintColor = UIColor(named: "Light green")
        self.backgroundColor = .white
        self.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        self.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        self.layer.cornerRadius = 10
        
        //shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 6
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 0.05
        
    }
    
}
