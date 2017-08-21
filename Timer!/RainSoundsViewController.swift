//
//  RainSoundsViewController.swift
//  Timer!
//
//  Created by Cameron Laury on 8/21/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

class RainSoundsViewController: UIViewController {

    @IBOutlet weak var heavyThunderBtn: UIButton!
    
    @IBOutlet weak var lightRainBtn: UIButton!
    
    @IBOutlet weak var rainOnRoofBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func heavyThunderBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "thunderstorm_selected"), offImage: #imageLiteral(resourceName: "thunderstorm_unselected"))
        
    }
    
    @IBAction func lightRainBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "light_rain_selected"), offImage: #imageLiteral(resourceName: "light_rain_unselected"))
        
    }
    
    @IBAction func rainOnRoofBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "on_roof_selected"), offImage: #imageLiteral(resourceName: "on_roof_unselected"))
        
    }
    
    
    func toggleButton(button: UIButton, onImage: UIImage, offImage: UIImage) {
        if button.currentImage == offImage {
            button.setImage(onImage, for: .normal)
        } else {
            button.setImage(offImage, for: .normal)
        }
    }

}
