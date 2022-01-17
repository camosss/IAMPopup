//
//  ViewController.swift
//  IAMPopup
//
//  Created by camosss on 01/16/2022.
//  Copyright (c) 2022 camosss. All rights reserved.
//

import UIKit
import IAMPopup

class ViewController: UIViewController {

    // MARK: - Properties
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.frame = CGRect(x: 16, y: 16, width: 100, height: 50)
        return label
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
    }

    // MARK: - Action
    
    @IBAction func top_tapBtn(_ sender: UIButton) {
        self.view.IAM_top(height: 100) { slideView in
            slideView.addSubview(self.titleLabel)
            self.titleLabel.text = "TOP"
        }
    }
    
    @IBAction func center_tapBtn(_ sender: UIButton) {
        self.view.IAM_center(height: 400) { slideView in
            slideView.addSubview(self.titleLabel)
            self.titleLabel.text = "Center"
        }
    }
    
    @IBAction func bottom_tapBtn(_ sender: UIButton) {
        self.view.IAM_bottom(height: 300) { slideView in
            slideView.addSubview(self.titleLabel)
            self.titleLabel.text = "Bottom"
        }
    }
    
}

