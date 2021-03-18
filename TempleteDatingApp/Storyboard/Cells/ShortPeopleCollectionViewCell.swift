//
//  ShortPeopleCollectionViewCell.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 16.03.2021.
//

import UIKit

class ShortPeopleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 20
    }

}
