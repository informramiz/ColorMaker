//
//  ViewController.swift
//  ColorMaker
//
//  Created by Apple on 07/05/2019.
//  Copyright © 2019 RR Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
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
        let r = CGFloat(self.redSlider.value)
        let g = CGFloat(self.greenSlider.value)
        let b = CGFloat(self.blueSlider.value)
        self.colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

