//
//  ViewController.swift
//  Timer!
//
//  Created by Cameron Laury on 8/19/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
//which kinds of sounds do you want activated? Which category?
    @IBOutlet weak var rainBtn: UIButton!
    @IBOutlet weak var ambienceBtn: UIButton!
    @IBOutlet weak var vaporwaveBtn: UIButton!
    
    
    @IBOutlet weak var alarmButton: UIButton!
    
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func rainBtnPressed(_ sender: UIButton) {
        
    }

    @IBAction func abienceBtnPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func vaporwaveBtnPressed(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        }
        
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggleButton(button: UIButton, onImage: UIImage, offImage: UIImage) {
        if button.currentImage == offImage {
            button.setImage(onImage, for: .normal)
        } else {
            button.setImage(offImage, for: .normal)
        }
    }
}
