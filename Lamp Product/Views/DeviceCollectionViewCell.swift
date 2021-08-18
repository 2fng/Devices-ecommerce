//
//  DeviceCollectionViewCell.swift
//  Lamp Product
//
//  Created by Hua Son Tung on 18/08/2021.
//

import UIKit

class DeviceCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var deviceImg: UIImageView!
    
    @IBOutlet weak var deviceName: UILabel!
    
    @IBOutlet weak var devicePrice: UILabel!
    
    func setup(with tv: Tv) {
        deviceImg.image = UIImage(named: tv.image)
        deviceName.text = tv.name
        deviceName.textColor = .black
        devicePrice.text = "\(tv.price)$"
        devicePrice.textColor = .black
    }
}
