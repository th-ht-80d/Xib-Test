//
//  TableViewCell.swift
//  Xib-Test
//
//  Created by 濱貴大 on 2021/03/14.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var addLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
