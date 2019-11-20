//
//  ViewController.swift
//  UiViewPoc
//
//  Created by Matt Crowder on 11/20/19.
//  Copyright © 2019 Matt Crowder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: MenuButton(frame: CGRect(x: 50, y: 50, width: 100, height: 100)))
    }
    


}

