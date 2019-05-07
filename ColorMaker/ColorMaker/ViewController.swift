//
//  ViewController.swift
//  ColorMaker
//
//  Created by Apple on 07/05/2019.
//  Copyright © 2019 RR Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateColor()
    }

    @IBAction func updateColor() {
        let r: CGFloat = self.redSwitch.isOn ? 1.0 : 0
        let g: CGFloat = self.greenSwitch.isOn ? 1.0 : 0
        let b: CGFloat = self.blueSwitch.isOn ? 1.0 : 0
        self.colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

