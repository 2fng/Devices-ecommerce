//
//  GradientButton.swift
//  Lamp Product
//
//  Created by Hua Son Tung on 17/08/2021.
//

import UIKit

class GradientButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 15
        self.tintColor = .white
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor(named: "Light green")!, UIColor(named: "Dark green")!]
        
        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
