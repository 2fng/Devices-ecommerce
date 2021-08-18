//
//  ViewController.swift
//  Lamp Product
//
//  Created by Hua Son Tung on 16/08/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    var tvArray = [Tv(name: "Old Tv", price: "10.0", image: "oldTV"), Tv(name: "Singer Tv", price: "50.0", image: "singerTV"), Tv(name: "Samsung Tv", price: "100.0", image: "samsungTV")]
    
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
    
    @IBOutlet var collectionView: UICollectionView!

    @IBAction func tvClicked(_ sender: Any) {
        if tvDot.textColor == UIColor.white {
            //tvButton.backgroundColor = UIColor(named: "Light green")
            tvButton.applyGradient(image: "tv.fill", color1: "Light green", color2: "Dark green")
            tvDot.textColor = UIColor(named: "Light green")
            
            
            laptopButton.applyGradient(image: "laptopcomputer")
            laptopDot.textColor = UIColor.white
            iphoneButton.applyGradient(image: "iphone")
            iphoneDot.textColor = UIColor.white
        } else {
            tvButton.applyGradient(image: "tv.fill")
            tvDot.textColor = .white
        }
        
    }
    
    @IBAction func laptopClicked(_ sender: Any) {
        if laptopDot.textColor == UIColor.white {
            //laptopButton.backgroundColor = UIColor(named: "Light green")
            laptopDot.textColor = UIColor(named: "Light green")
            laptopButton.applyGradient(image: "laptopcomputer", color1: "Light green", color2: "Dark green")
            
            tvButton.applyGradient(image: "tv.fill")
            tvDot.textColor = UIColor.white
            iphoneButton.applyGradient(image: "iphone")
            iphoneDot.textColor = UIColor.white
        } else {
            laptopButton.applyGradient(image: "laptopcomputer")
            laptopDot.textColor = UIColor.white
        }
        
    }
    
    @IBAction func iphoneClicked(_ sender: Any) {
        if iphoneDot.textColor == UIColor.white {
            //iphoneButton.backgroundColor = UIColor(named: "Light green")
            iphoneButton.applyGradient(image: "tv.fill", color1: "Light green", color2: "Dark green")
            iphoneDot.textColor = UIColor(named: "Light green")
            
            
            laptopButton.applyGradient(image: "laptopcomputer")
            laptopDot.textColor = UIColor.white
            tvButton.applyGradient(image: "tv.fill")
            tvDot.textColor = UIColor.white
        } else {
            iphoneButton.applyGradient(image: "iphone")
            iphoneDot.textColor = UIColor.white
        }
        
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBarItems()
        setupDevicesButtons()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        //collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    // MARK: Navigation bar items
    private func setupNavigationBarItems() {
        //leftBarButton customize
        
        leftBarButton.navBarButtonDesign(imageName: "circle.grid.2x2.fill")
        
        rightBarButton.navBarButtonDesign(imageName: "bag.fill")
        
    }
    
    private func setupDevicesButtons() {
        tvButton.deviceButton()
        tvButton.applyGradient(image: "tv.fill")
        laptopButton.deviceButton()
        laptopButton.applyGradient(image: "laptopcomputer")
        iphoneButton.deviceButton()
        iphoneButton.applyGradient(image: "iphone")
    }


}

//Setup delegate and datasource for DevicesCollectionView
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tvArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DeviceCollectionViewCell", for: indexPath) as! DeviceCollectionViewCell
        
        cell.setup(with: tvArray[indexPath.row])
        return cell
    }
    
}

//extension HomeViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        return CGSize(width: 350, height: 300)
//    }
//}
