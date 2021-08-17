//
//  ViewController.swift
//  Lamp Product
//
//  Created by Hua Son Tung on 16/08/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    //Nav buttons
    @IBOutlet var leftBarButton: UIButton!
    @IBOutlet var rightBarButton: UIButton!
    //Title
    @IBOutlet var titleLabel: UILabel!
    //Device buttons
    @IBOutlet var tvButton: UIButton!
    @IBOutlet var tvDot: UILabel!
    
    @IBOutlet var laptopButton: UIButton!
    @IBOutlet var laptopDot: UILabel!
    
    @IBOutlet var iphoneButton: UIButton!
    @IBOutlet var iphoneDot: UILabel!

    @IBAction func tvClicked(_ sender: Any) {
        if tvButton.backgroundColor == UIColor(named: "Dark gray") {
            tvButton.backgroundColor = UIColor(named: "Light green")
            tvDot.textColor = UIColor(named: "Light green")
            
            
            laptopButton.backgroundColor = UIColor(named: "Dark gray")
            laptopDot.textColor = UIColor.white
            iphoneButton.backgroundColor = UIColor(named: "Dark gray")
            iphoneDot.textColor = UIColor.white
        } else {
            tvButton.backgroundColor = UIColor(named: "Dark gray")
            tvDot.textColor = .white
        }
        
    }
    
    @IBAction func laptopClicked(_ sender: Any) {
        if laptopButton.backgroundColor == UIColor(named: "Dark gray") {
            laptopButton.backgroundColor = UIColor(named: "Light green")
            laptopDot.textColor = UIColor(named: "Light green")
            
            tvButton.backgroundColor = UIColor(named: "Dark gray")
            tvDot.textColor = UIColor.white
            iphoneButton.backgroundColor = UIColor(named: "Dark gray")
            iphoneDot.textColor = UIColor.white
        } else {
            laptopButton.backgroundColor = UIColor(named: "Dark gray")
            laptopDot.textColor = UIColor.white
        }
        
    }
    
    @IBAction func iphoneClicked(_ sender: Any) {
        if iphoneButton.backgroundColor == UIColor(named: "Dark gray") {
            iphoneButton.backgroundColor = UIColor(named: "Light green")
            iphoneDot.textColor = UIColor(named: "Light green")
            
            
            laptopButton.backgroundColor = UIColor(named: "Dark gray")
            laptopDot.textColor = UIColor.white
            tvButton.backgroundColor = UIColor(named: "Dark gray")
            tvDot.textColor = UIColor.white
        } else {
            iphoneButton.backgroundColor = UIColor(named: "Dark gray")
            iphoneDot.textColor = UIColor.white
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
        //tvButton.applyGradient(image: "tv.fill")
        laptopButton.deviceButton()
        iphoneButton.deviceButton()
    }


}

