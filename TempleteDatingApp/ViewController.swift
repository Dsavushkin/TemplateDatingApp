//
//  ViewController.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 07.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = MainSettings.logotype
        view.backgroundColor = MainSettings.generalColor
    }


}

