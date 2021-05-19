//
//  newsTableViewCell.swift
//  FinalTask
//
//  Created by 0commander on 2021/5/19.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class newsTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    
    @IBOutlet weak var info: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
