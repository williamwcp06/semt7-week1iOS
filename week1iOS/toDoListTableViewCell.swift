//
//  toDoListTableViewCell.swift
//  week1iOS
//
//  Created by william on 9/2/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

class toDoListTableViewCell: UITableViewCell {

    @IBOutlet weak var toDoListLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
