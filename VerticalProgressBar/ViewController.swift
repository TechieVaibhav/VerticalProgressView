//
//  ViewController.swift
//  VerticalProgressBar
//
//  Created by Mohit Shrama on 18/09/19.
//  Copyright © 2019 vaibhav sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var verticalProgressBar: VerticalProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        verticalProgressBar.progress = 0.3
        verticalProgressBar.trackColor = UIColor.yellow
        verticalProgressBar.tintColor = UIColor.green
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        verticalProgressBar.progress = slider.value
    }
}

