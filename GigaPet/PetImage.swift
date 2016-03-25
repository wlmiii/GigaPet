//
//  PetImage.swift
//  GigaPet
//
//  Created by William L. Marr III on 3/25/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import Foundation
import UIKit

class PetImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        // Set a default image when the animation is stopped,
        // and reset the animation images array for the next animation loop.
        self.image = UIImage(named: "idle_1.png")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        for x in 1...4 {
            let img = UIImage(named: "idle_\(x).png")
            
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        // Set a default image when the animation is stopped,
        // and reset the animation images array for the next animation loop.
        self.image = UIImage(named: "dead5.png")
        
        // Reset the images for the next animation.
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        for x in 1...5 {
            let img = UIImage(named: "dead\(x).png")
            
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
}
