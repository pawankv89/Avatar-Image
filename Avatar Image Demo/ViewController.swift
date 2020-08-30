//
//  ViewController.swift
//  Avatar Image Demo
//
//  Created by Pawan kumar on 06/08/20.
//  Copyright © 2020 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageview = UIImageView()
        imageview.backgroundColor = .white
        imageview.frame = CGRect.init(x: 50, y: 50, width: 300, height: 300)
        imageview.layer.cornerRadius = imageview.frame.size.height / 2
        imageview.layer.borderColor = UIColor.red.cgColor
        imageview.layer.borderWidth = 1
        imageview.layer.masksToBounds = true
        imageview.center = self.view.center
        self.view.addSubview(imageview)
        
        let image = AvatarGenerator.avatarImage(withSeed: "300", width: 300, height: 300)
        imageview.image = image
             
    }


}

