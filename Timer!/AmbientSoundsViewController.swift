//
//  AmbientSoundsViewController.swift
//  Timer!
//
//  Created by Cameron Laury on 8/21/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

class AmbientSoundsViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var wavesBtn: UIButton!
    
    @IBOutlet weak var fanBtn: UIButton!
    
    @IBOutlet weak var campfireBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.layer.cornerRadius = 10
        backgroundView.layer.masksToBounds = true

    }
    
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func wavesBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "waves_selected"), offImage: #imageLiteral(resourceName: "waves_unselected"))
    }
    
    @IBAction func fanBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "fans_selected"), offImage: #imageLiteral(resourceName: "fans_unselected"))
    }
    
    @IBAction func campfireBtnPressed(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "fire_selected"), offImage: #imageLiteral(resourceName: "fire_unselected"))
    }
    
    
    
    
    func toggleButton(button: UIButton, onImage: UIImage, offImage: UIImage) {
        if button.currentImage == offImage {
            button.setImage(onImage, for: .normal)
        } else {
            button.setImage(offImage, for: .normal)
            
        }
        
    }


}
