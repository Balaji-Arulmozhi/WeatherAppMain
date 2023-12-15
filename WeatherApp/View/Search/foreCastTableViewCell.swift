//
//  foreCastTableViewCell.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 16/02/23.
//

import UIKit

class foreCastTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dailyTimelbl: UILabel!
    @IBOutlet weak var dailyImg: UIImageView!
    @IBOutlet weak var dailyTemplbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
