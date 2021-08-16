//
//  ViewController.swift
//  Lamp Product
//
//  Created by Hua Son Tung on 16/08/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var leftBarButton: UIButton!
    @IBOutlet var rightBarButton: UIButton!
    @IBOutlet var titleLabel: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBarItems()
        
        
    }
    
    // MARK: Navigation bar items
    private func setupNavigationBarItems() {
        //leftBarButton customize
        
        leftBarButton.navBarButtonDesign(imageName: "circle.grid.2x2.fill")
        
        rightBarButton.navBarButtonDesign(imageName: "bag.fill")
        
        
        
    }


}

