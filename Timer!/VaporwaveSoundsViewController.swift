//
//  VaporwaveSoundsViewController.swift
//  Timer!
//
//  Created by Cameron Laury on 8/21/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

class VaporwaveSoundsViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var ecoVirtualBtn: UIButton!
    
    @IBOutlet weak var plantWaveBtn: UIButton!
    
    @IBOutlet weak var vanityBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.layer.cornerRadius = 10
        backgroundView.layer.masksToBounds = true
        
        
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func ecoVirtualBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "ecovirtual_selected"), offImage: #imageLiteral(resourceName: "ecovirtual_unselected"))
    }
    
    @IBAction func plantWaveBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "plantwave_selected"), offImage: #imageLiteral(resourceName: "plantwave_unselected"))
    }
    
    @IBAction func vanityBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "死夢_selected"), offImage: #imageLiteral(resourceName: "死夢_unselected"))
    }
    

    func toggleButton(button: UIButton, onImage: UIImage, offImage: UIImage) {
        if button.currentImage == offImage {
            button.setImage(onImage, for: .normal)
        } else {
            button.setImage(offImage, for: .normal)
            
        }
        
    }
    
    
}

