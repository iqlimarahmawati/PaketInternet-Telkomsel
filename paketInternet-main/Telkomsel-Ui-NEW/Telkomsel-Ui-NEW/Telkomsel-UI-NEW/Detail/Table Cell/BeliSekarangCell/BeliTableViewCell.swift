//
//  BeliTableViewCell.swift
//  Telkomsel-UI-NEW
//
//  Created by Phincon on 08/03/23.
//

import UIKit

class BeliTableViewCell: UITableViewCell {
    
    static let identifier = "BeliTableViewCell"

    @IBOutlet weak var beliView: UIView!
    @IBOutlet weak var beliButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
     

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
    @IBAction func beliSekarangAction(_ sender: Any) {
        
    }
    
}
