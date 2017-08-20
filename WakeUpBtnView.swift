//
//  WakeUpBtnView.swift
//  Timer!
//
//  Created by Cameron Laury on 8/20/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

@IBDesignable
class WakeUpBtnView: BounceButton {

    override func draw(_ rect: CGRect) {
        RoundBtnTimerBtn.drawWakeUpBtn(frame: self.bounds, resizing: .aspectFit)
    }
}
