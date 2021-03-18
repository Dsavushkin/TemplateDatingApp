//
//  EventCollectionViewCell.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 14.03.2021.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 15
    }

}
