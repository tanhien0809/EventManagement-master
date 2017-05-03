//
//  EventManagementTableViewCell.swift
//  EventManagement
//
//  Created by Hien on 4/27/17.
//  Copyright © 2017 Hien. All rights reserved.
//

import UIKit

class EventManagementTableViewCell: UITableViewCell {
    
    @IBOutlet dynamic weak var Name: UILabel!
    @IBOutlet dynamic weak var Description: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
