//
//  BulbViewController.swift
//  demoUI
//
//  Created by Nguyễn Ngọc Sơn on 18/07/2023.
//

import UIKit

enum Light {
    case on
    case off
}
class BulbViewController: UIViewController {

    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var bulbButton: UIButton!
    
    var lightStatus: Light = Light.on
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        bulbButton.setTitleColor(.white, for: .normal)
        bulbButton.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        
        lightOnOff()
    }
    
    @IBAction func pressLightOnOff(_ sender: Any) {
        lightStatus = lightStatus == .on ? .off : .on
        
        lightOnOff()
    }
    
    func lightOnOff() {
        if lightStatus == .on {
            bulbImageView.image = UIImage(named: "bulb-on")
            bulbButton.setTitle("Tắt đèn", for: .normal)
        } else {
            bulbImageView.image = UIImage(named: "bulb-off")
            bulbButton.setTitle("Bật đèn", for: .normal)
        }
    }
    
}
