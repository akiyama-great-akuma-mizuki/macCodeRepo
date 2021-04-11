//
//  CustomTableViewCell.swift
//  
//
//  Created by 0commander on 2021/4/10.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    let products = [
        ["name":"j32","detail":"jsd32G"],
        ["name":"j24","detail":"jsd24G"],
        ["name":"j16","detail":"jsd16G"],
        ["name":"j32","detail":"jsd32G"],
        ["name":"j24","detail":"jsd24G"],
        ["name":"j16","detail":"jsd16G"]
    ]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet var TitleLabel: UILabel!
    
    @IBOutlet var DetailLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
