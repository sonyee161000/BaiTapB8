//
//  InputController.swift
//  demoUI
//
//  Created by Nguyễn Ngọc Sơn on 18/07/2023.
//

import UIKit

class InputController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var random: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        random = Int.random(in: 1...100)

    }
    
    func setupUI() {
        numberTextField.placeholder = "Enter a number"
        randomButton.setTitle("Guest", for: .normal)
        resultLabel.textAlignment = .center
    }
    
    @IBAction func onRandom(_ sender: Any) {
        
        if let text = numberTextField.text {
            if text == String(random) {
                resultLabel.text = "Chuc mung ban da doan dung"
            } else {
                resultLabel.text = "Ban da doan sai, so chien thang la \(random)"
            }
        }
    }
    
    
}
