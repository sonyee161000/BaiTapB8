//
//  AnimateViewController.swift
//  demoUI
//
//  Created by Nguyễn Ngọc Sơn on 18/07/2023.
//

import UIKit

class AnimateViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        myView.center = view.center
        myView.backgroundColor = UIColor.red
        
        UIView.animate(withDuration: 2) {
            self.myView.backgroundColor = .blue
            self.myView.layer.cornerRadius = self.myView.bounds.height/2
            self.myView.alpha = 0.1
            self.myView.frame.origin.y = self.view.frame.maxY - 100
        }
    }

}
