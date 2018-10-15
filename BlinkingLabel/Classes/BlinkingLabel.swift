//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by Rick Wang on 2018/10/15.
//

import UIKit

public class BlinkingLabel: UILabel {

    public func startBlinking () {
        UIView.animate(withDuration: 0.3, delay: 0, options: [UIView.AnimationOptions.repeat, UIView.AnimationOptions.autoreverse], animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking () {
        self.alpha = 1
        self.layer.removeAllAnimations()
    }

}
