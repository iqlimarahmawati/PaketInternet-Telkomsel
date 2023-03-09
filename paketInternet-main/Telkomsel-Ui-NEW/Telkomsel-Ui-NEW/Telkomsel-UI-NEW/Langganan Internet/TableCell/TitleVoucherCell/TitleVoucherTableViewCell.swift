//
//  TitleVoucherTableViewCell.swift
//  Telkomsel-Ui-NEW
//
//  Created by Phincon on 07/03/23.
//

import UIKit

class TitleVoucherTableViewCell: UITableViewCell {
    
    static let identifier = "titleVoucherCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var lihatSemuaButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.font = .systemFont(ofSize: 17, weight: .bold)
        
        lihatSemuaButton.tintColor = .red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    @IBAction func lihatSemuaTap(_ sender: Any) {
        // ke lihat semua
    }
    
}
