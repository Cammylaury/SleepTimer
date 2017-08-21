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
    
// The three different rain sounds
    @IBOutlet weak var heavyThunderBtn: UIButton!
    @IBOutlet weak var lightRainBtn: UIButton!
    @IBOutlet weak var rainOnRoofBtn: UIButton!
    
//the three different ambient noise options
    @IBOutlet weak var wavesBtn: UIButton!
    @IBOutlet weak var fanBtn: UIButton!
    @IBOutlet weak var campfireBtn: UIButton!
    
// the three different vaporwave options
    @IBOutlet weak var ecoVirtualBtn: UIButton!
    @IBOutlet weak var plantwaveBtn: UIButton!
    @IBOutlet weak var vanityBtn: UIButton!
    
    
    @IBOutlet weak var alarmButton: UIButton!
    
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//setting different points for the different buttons
//configuring rain buttons center points
        heavyThunderBtn.center = rainBtn.center
        lightRainBtn.center = rainBtn.center
        rainOnRoofBtn.center = rainBtn.center
        
//ambient center points
        wavesBtn.center = ambienceBtn.center
        fanBtn.center = ambienceBtn.center
        campfireBtn.center = ambienceBtn.center
        
//vaporwave center points
        ecoVirtualBtn.center = vaporwaveBtn.center
        plantwaveBtn.center = vaporwaveBtn.center
        vanityBtn.center = vaporwaveBtn.center
        
    }
    
    
    //buttons for the rain option
    @IBAction func thunderBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "thunderstorm_selected"), offImage: #imageLiteral(resourceName: "thunderstorm_unselected"))
    }
    @IBAction func lightRainBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "light_rain_selected"), offImage: #imageLiteral(resourceName: "light_rain_unselected"))
    }
    @IBAction func onRoofBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "on_roof_selected"), offImage: #imageLiteral(resourceName: "on_roof_unselected"))
    }
    
// animating the rain button popout
    @IBAction func rainBtnPressed(_ sender: UIButton) {
        
        print("button pressed")
    }
    
    
//buttons for the ambience button popout
    @IBAction func wavesBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "waves_selected"), offImage: #imageLiteral(resourceName: "waves_unselected"))
    }
    @IBAction func fanBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "fans_selected"), offImage: #imageLiteral(resourceName: "fans_unselected"))
    }
    @IBAction func fireBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "fire_selected"), offImage: #imageLiteral(resourceName: "fire_unselected"))
    }
//animating the ambience button popout
    @IBAction func abienceBtnPressed(_ sender: UIButton) {
    }
    
    
//buttons for the vaporwave button popout
    @IBAction func ecoBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "ecovirtual_selected"), offImage: #imageLiteral(resourceName: "ecovirtual_unselected"))
    }
    @IBAction func plantWaveBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "plantwave_selected"), offImage: #imageLiteral(resourceName: "plantwave_unselected"))
    }
    @IBAction func vanityBtnClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "死夢_selected"), offImage: #imageLiteral(resourceName: "死夢_unselected"))
    }
// animating the vaporwave button popout
    @IBAction func vaporwaveBtnPressed(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = segue.destination as! TimerViewController
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }
    
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = alarmButton.center
        transition.circleColor = UIColor(red:0.11, green:0.29, blue:0.45, alpha:1.0)
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = alarmButton.center
        transition.circleColor = UIColor(red:0.11, green:0.29, blue:0.45, alpha:1.0)
        
        return transition
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
