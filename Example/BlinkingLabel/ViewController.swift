//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by woshiwwy16@126.com on 10/15/2018.
//  Copyright (c) 2018 woshiwwy16@126.com. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {
    
    var isBlinkingLabel = false
    var blinkingLabel = BlinkingLabel(frame: CGRect(x: 100, y: 50, width: 100, height: 30))
    var toggleBtn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blinkingLabel.text = "弹一闪"
        blinkingLabel.textColor = UIColor.red
        blinkingLabel.textAlignment = .center
        self.view.addSubview(blinkingLabel)
        
        toggleBtn.setTitle("闪", for: UIControlState.normal)
        toggleBtn.titleLabel?.textAlignment = .center
        toggleBtn.setTitleColor(UIColor.blue, for: UIControlState.normal)
        toggleBtn.addTarget(self, action: #selector(toggleBtnClicked(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(toggleBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func toggleBtnClicked(_ sender: UIButton){
        self.isBlinkingLabel = !self.isBlinkingLabel
        if self.isBlinkingLabel{
            blinkingLabel.startBlinking()
        }
        else{
            blinkingLabel.stopBlinking()
        }
    }
}

