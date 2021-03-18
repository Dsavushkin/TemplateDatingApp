//
//  CollectionViewCell.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 14.03.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 15
    }

}
