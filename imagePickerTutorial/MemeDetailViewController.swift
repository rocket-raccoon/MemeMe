//
//  MemeDetailViewController.swift
//  imagePickerTutorial
//
//  Created by Alberto Benavides on 5/14/15.
//  Copyright (c) 2015 rocket-raccoon. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var meme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = meme!.memedImage
        
    }

    
}
