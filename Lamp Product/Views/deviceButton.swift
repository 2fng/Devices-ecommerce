//
//  deviceButton.swift
//  Lamp Product
//
//  Created by Hua Son Tung on 16/08/2021.
//

import UIKit

extension UIButton {
    
    func deviceButton() {
        
        self.tintColor = .white
        //self.backgroundColor = UIColor(named: "Dark gray")
        //self.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //self.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        self.layer.cornerRadius = 15
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 6
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 0.05
        
        self.layer.masksToBounds = true
        
        
    }
    
    func applyGradient(image: String, color1: String = "", color2: String = "") {
        
        imageView?.contentMode = .scaleAspectFit
        imageView?.image = UIImage(systemName: image)
        
        
        self.tintColor = .white
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        
        if color1 != "" && color2 != "" {
            gradient.colors = [UIColor(named: "Light green")!.cgColor, UIColor(named: "Dark green")!.cgColor]
        } else {
            gradient.colors = [UIColor.lightGray.cgColor, UIColor.gray.cgColor]
        }
        
        
        //gradient.colors = [UIColor.green.cgColor, UIColor.yellow.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0.7, y: 0)
        
        //gradient.contents = icon?.cgImage
        self.addSubview(imageView!)
        self.layer.addSublayer(gradient)
        self.bringSubviewToFront(imageView!)
        
        self.layer.cornerRadius = 15
    }
    
}
