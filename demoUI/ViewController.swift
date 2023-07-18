//
//  ViewController.swift
//  demoUI
//
//  Created by Nguyễn Ngọc Sơn on 13/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeColorButton: UIButton!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var numberView: UILabel!
    
    let colors: [UIColor] = [UIColor.red, UIColor.black, UIColor.yellow]
    
    override func viewDidLoad() {
        configUI()

        let tapGesTure = UITapGestureRecognizer(target: self, action: #selector(onTapImage))
        imageView.addGestureRecognizer(tapGesTure)
        imageView.isUserInteractionEnabled = true
    }

    func configUI() {
//        changeColorButton.setTitle("Change Color", for: .normal)
        changeColorButton.setTitleColor(UIColor.red, for: .normal)
        changeColorButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        changeColorButton.backgroundColor = UIColor.cyan
        changeColorButton.layer.cornerRadius = 10
        changeColorButton.layer.borderWidth = 4
        changeColorButton.layer.borderColor = UIColor.red.cgColor
//        changeColorButton.frame = CGRect(x: 137, y: 428, width: 200, height: 50)
        
        colorView.backgroundColor = UIColor.blue
        
        numberView.textAlignment = .center
        numberView.font = UIFont.systemFont(ofSize: 40)
        numberView.textColor = UIColor.red
        numberView.frame = CGRect(x: changeColorButton.frame.origin.x + 100, y: changeColorButton.frame.origin.y - 100, width: 100, height: 50)
        numberView.backgroundColor = .yellow
        
        imageView.backgroundColor = .red
    }
    
    @IBAction func onTapButton(_ sender: UIButton) {
        var randomColor: UIColor?
        repeat {
            randomColor = colors.randomElement()
        } while randomColor == colorView.backgroundColor
        colorView.backgroundColor = randomColor
        
        var randomNumber: Int
        repeat {
            randomNumber = Int.random(in: 1...2)
        } while numberView.text == String(randomNumber)
        numberView.text = "\(randomNumber)"
       
        
    }
    
    @objc func onTapImage() {
        imageView.image = UIImage(named: "hinh-nen-")
        
    }
    
}

