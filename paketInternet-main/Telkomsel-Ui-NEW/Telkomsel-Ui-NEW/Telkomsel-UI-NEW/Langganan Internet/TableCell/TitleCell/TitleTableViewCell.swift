//
//  TitleTableViewCell.swift
//  Telkomsel-Ui-NEW
//
//  Created by Phincon on 07/03/23.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "titleTableViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.font = .systemFont(ofSize: 17, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
