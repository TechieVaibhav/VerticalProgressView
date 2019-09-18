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
        verticalProgressBar.addCornerRadius(radius: (verticalProgressBar.frame.size.height/2))
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        UIView.animate(withDuration: 0.2) {
            self.verticalProgressBar.progress = self.slider.value
        }
        
    }
}

