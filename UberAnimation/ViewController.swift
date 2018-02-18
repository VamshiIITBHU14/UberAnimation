//
//  ViewController.swift
//  UberAnimation
//
//  Created by Vamshi Krishna on 18/02/18.
//  Copyright © 2018 Vamshi Krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func promoClicked(_ sender: Any) {
        let imageNamesArray = ["star1", "star2"]
        VKEmitter().emitParticles(superView: view, imageNamesArray: imageNamesArray, stopAfterSeconds: 2.0, type: 1)
    }
    
}

