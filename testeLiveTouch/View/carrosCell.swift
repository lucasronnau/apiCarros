//
//  carrosCell.swift
//  testeLiveTouch
//
//  Created by Lucas Ronnau on 10/12/19.
//  Copyright © 2019 Lucas Ronnau. All rights reserved.
//

import UIKit

class carrosCell: UITableViewCell {

    @IBOutlet weak var carroImagem: UIImageView!
    @IBOutlet weak var nomeCarro: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
