//
//  PaketTotalTableViewCell.swift
//  Telkomsel-UI-NEW
//
//  Created by Phincon on 08/03/23.
//

import UIKit

class PaketTotalTableViewCell: UITableViewCell {
    
    static let identifier = "PaketTotalTableViewCell"

    @IBOutlet weak var namaPaketLabel: UILabel!
    @IBOutlet weak var totalKuotaLabel: UILabel!
    @IBOutlet weak var hargaAsliLabel: UILabel!
    @IBOutlet weak var hargaDiskonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
        setupPaketTotal()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func setupPaketTotal() {

        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Rp99.000"); attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length)); hargaAsliLabel.attributedText = attributeString }
}

