//
//  BounceButton.swift
//  Timer!
//
//  Created by Cameron Laury on 8/20/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

class BounceButton: UIButton {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .allowUserInteraction, animations: {
            
            self.transform = CGAffineTransform.identity
            
        }, completion: nil)
        
        super.touchesBegan(touches, with: event)
        
    }

}
