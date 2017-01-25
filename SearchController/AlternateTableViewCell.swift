//
//  AlternateTableViewCell.swift
//  SearchController
//
//  Created by Victor Shurapov on 01/25/16.
//  Copyright © 2017 Victor Shurapov. All rights reserved.
//

import UIKit

class AlternateTableViewCell: UITableViewCell {

    @IBOutlet weak var hugeCountryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(countryName:String)
    {
        hugeCountryLabel.text = countryName
    }

}
