//
//  DinamondViewController.swift
//  demoUI
//
//  Created by Nguyễn Ngọc Sơn on 18/07/2023.
//

import UIKit

class DinamondViewController: UIViewController {
    @IBOutlet weak var dinamondImageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        labelView.textAlignment = .center
        labelView.text = "I am Rich"
        labelView.textColor = .white
        labelView.alpha = 0
        dinamondImageView.image = UIImage(named: "rich")
        dinamondImageView.alpha = 0
        

        UIView.animate(withDuration: 5) {
            self.labelView.alpha = 1
            self.dinamondImageView.alpha = 1
        }
    }

}
