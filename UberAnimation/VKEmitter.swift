//
//  VKEmitter.swift
//  UberAnimation
//
//  Created by Vamshi Krishna on 18/02/18.
//  Copyright © 2018 Vamshi Krishna. All rights reserved.
//

import Foundation
import UIKit

class VKEmitter:NSObject{
    
    var emitter = CAEmitterLayer()
    func emitParticles(superView:UIView, imageNamesArray:[String], stopAfterSeconds:Double, type:Int){
        var typeOfAnimation = ""
        switch type {
        case 1:
            typeOfAnimation = kCAEmitterLayerPoints
        case 2:
            typeOfAnimation = kCAEmitterLayerLine
        case 3:
            typeOfAnimation = kCAEmitterLayerRectangle
        default:
            typeOfAnimation = kCAEmitterLayerPoints
        }
        
        let rect = CGRect(x: 0, y: UIScreen.main.bounds.height-50, width: UIScreen.main.bounds.width, height: 50)
        emitter = CAEmitterLayer()
        emitter.frame = rect
        superView.layer.addSublayer(emitter)
        emitter.emitterShape = typeOfAnimation
        emitter.emitterSize = rect.size
        emitter.emitterPosition = CGPoint(x: rect.width/2, y: rect.height/2)
        
        Timer.scheduledTimer(timeInterval: stopAfterSeconds, target: self, selector: #selector(stopEmitting), userInfo: nil, repeats: false)
        emitter.emitterCells = (0..<imageNamesArray.count).map({ i in
            let emitterCell = CAEmitterCell()
            emitterCell.contents = UIImage(named: imageNamesArray[i])?.cgImage
            emitterCell.birthRate = 100
            emitterCell.lifetime = 1.5
            emitterCell.lifetimeRange = 1
            emitterCell.yAcceleration = 60.0
            emitterCell.xAcceleration = -10
            emitterCell.velocity = 150
            emitterCell.velocityRange = 200
            emitterCell.emissionLongitude = -.pi * 0.5
            emitterCell.emissionRange = .pi * 1
            emitterCell.redRange = 0.3
            emitterCell.greenRange = 0.3
            emitterCell.blueRange = 0.3
            emitterCell.scale = 0.8
            emitterCell.scaleRange = 0.8
            emitterCell.scaleSpeed = -0.15
            emitterCell.alphaRange = 0.7
            emitterCell.alphaSpeed = -0.15
            return emitterCell
        })
    }
    
    @objc func stopEmitting(){
        emitter.removeFromSuperlayer()
    }
}
