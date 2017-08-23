//
//  TimerViewController.swift
//  Timer!
//
//  Created by Cameron Laury on 8/20/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var seconds = 60
    var timer = Timer()
    var isTimerRunning = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func dismissTimerViewController(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        timerLabel.text = "00:00:00"
    }

}
