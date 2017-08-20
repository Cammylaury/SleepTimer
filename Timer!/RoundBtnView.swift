//
//  RoundBtnView.swift
//  Timer!
//
//  Created by Cameron Laury on 8/19/17.
//  Copyright © 2017 Cameron Laury. All rights reserved.
//

import UIKit

@IBDesignable
class RoundBtnView: BounceButton {

    override func draw(_ rect: CGRect) {
        RoundBtnTimerBtn.drawCanvas2(frame: self.bounds, resizing: .aspectFit)
    }
}
