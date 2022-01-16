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
    
    let topButton: UIButton = {
        let bt = UIButton(frame: CGRect(x: 150, y: 300, width: 100, height: 50))
        bt.setTitle("TOP", for: .normal)
        bt.backgroundColor = .black
        bt.addTarget(self, action: #selector(top_tapBtn), for: .touchUpInside)
        return bt
    }()
    
    let centerButton: UIButton = {
        let bt = UIButton(frame: CGRect(x: 150, y: 400, width: 100, height: 50))
        bt.setTitle("MIDDLE", for: .normal)
        bt.backgroundColor = .black
        bt.addTarget(self, action: #selector(center_tapBtn), for: .touchUpInside)
        return bt
    }()
    
    let bottomButton: UIButton = {
        let bt = UIButton(frame: CGRect(x: 150, y: 500, width: 100, height: 50))
        bt.setTitle("BOTTOM", for: .normal)
        bt.backgroundColor = .black
        bt.addTarget(self, action: #selector(bottom_tapBtn), for: .touchUpInside)
        return bt
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [topButton, centerButton, bottomButton].forEach {
            view.addSubview($0)
        }
    }

    // MARK: - Action
    
    @objc func top_tapBtn() {
        self.view.IAM_top(height: 100) {
            print("top button")
        }
    }
    
    @objc func center_tapBtn() {
        self.view.IAM_center(height: 450) {
            print("center button")
        }
    }
    
    @objc func bottom_tapBtn() {
        self.view.IAM_bottom(height: 300) {
            print("bottom buttom")
        }
    }
}

