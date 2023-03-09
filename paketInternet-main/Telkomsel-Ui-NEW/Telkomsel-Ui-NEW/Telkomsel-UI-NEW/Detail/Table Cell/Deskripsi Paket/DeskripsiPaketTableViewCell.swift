//
//  DeskripsiPaketTableViewCell.swift
//  Telkomsel-UI-NEW
//
//  Created by Phincon on 08/03/23.
//

import UIKit

class DeskripsiPaketTableViewCell: UITableViewCell {

    static let identifier = "DeskripsiPaketTableViewCell"
    
    @IBOutlet weak var deskripsiLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
