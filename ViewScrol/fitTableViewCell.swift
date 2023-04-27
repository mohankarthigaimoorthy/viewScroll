//
//  fitTableViewCell.swift
//  ViewScrol
//
//  Created by Mohan K on 21/11/22.
//

import UIKit

class fitTableViewCell: UITableViewCell {

    
    @IBOutlet weak var track: UILabel!
    
    
    @IBOutlet weak var extra: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        track.layer.cornerRadius = 10
        extra.layer.cornerRadius = 10
        
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
