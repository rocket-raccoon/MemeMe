//
//  Meme.swift
//  imagePickerTutorial
//
//  Created by Alberto Benavides on 5/14/15.
//  Copyright (c) 2015 rocket-raccoon. All rights reserved.
//

import Foundation
import UIKit

class Meme {
    
    let bottomText: String?
    let topText: String?
    let image: UIImage?
    let memedImage: UIImage?
    
    init(bottomText: String, topText: String, image: UIImage, memedImage: UIImage) {
        self.bottomText = bottomText
        self.topText = topText
        self.image = image
        self.memedImage = memedImage
    }
    
}
