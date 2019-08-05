//
//  ViewController.swift
//  Demo3
//
//  Created by Tata on 2019/8/5.
//  Copyright © 2019 Tata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winnieImageView: UIImageView!
    @IBOutlet weak var honeyImageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sliderChange(_ sender: Any) {
        winnieImageView.frame.origin.x = CGFloat(60 + 315*slider.value);
        honeyImageView.frame.origin.x = CGFloat(727 - 315*slider.value);
        if slider.value == 1 {
            winnieImageView.image = UIImage(named: "winnie2");
    
            honeyImageView.alpha = 0;
        } else {
            winnieImageView.image = UIImage(named: "winnie")
            honeyImageView.alpha = 1;
        }
        
    }
}

