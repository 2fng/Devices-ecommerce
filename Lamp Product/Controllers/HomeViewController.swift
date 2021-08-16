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
    @IBOutlet var tvButton: UIButton!
    @IBOutlet var laptopButton: UIButton!
    @IBOutlet var iphoneButton: UIButton!

    @IBAction func tvClicked(_ sender: Any) {
        if tvButton.backgroundColor == UIColor(named: "Dark gray") {
            tvButton.backgroundColor = UIColor(named: "Light green")
        } else {
            tvButton.backgroundColor = UIColor(named: "Dark gray")
        }
        
    }
    
    @IBAction func laptopClicked(_ sender: Any) {
        if laptopButton.backgroundColor == UIColor(named: "Dark gray") {
            laptopButton.backgroundColor = UIColor(named: "Light green")
        } else {
            laptopButton.backgroundColor = UIColor(named: "Dark gray")
        }
        
    }
    
    @IBAction func iphoneClicked(_ sender: Any) {
        if iphoneButton.backgroundColor == UIColor(named: "Dark gray") {
            iphoneButton.backgroundColor = UIColor(named: "Light green")
        } else {
            iphoneButton.backgroundColor = UIColor(named: "Dark gray")
        }
        
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBarItems()
        setupDevicesButtons()
        
        
        
    }
    
    // MARK: Navigation bar items
    private func setupNavigationBarItems() {
        //leftBarButton customize
        
        leftBarButton.navBarButtonDesign(imageName: "circle.grid.2x2.fill")
        
        rightBarButton.navBarButtonDesign(imageName: "bag.fill")
        
    }
    
    private func setupDevicesButtons() {
        tvButton.deviceButton()
        laptopButton.deviceButton()
        iphoneButton.deviceButton()
    }


}

