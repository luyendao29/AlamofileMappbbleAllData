//
//  TableViewCell.swift
//  AlamofileMappble
//
//  Created by Boss on 9/23/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var idLable: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iconLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
