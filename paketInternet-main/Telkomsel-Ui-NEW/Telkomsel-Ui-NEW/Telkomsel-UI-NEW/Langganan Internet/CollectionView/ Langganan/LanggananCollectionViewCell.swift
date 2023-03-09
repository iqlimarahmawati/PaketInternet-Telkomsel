//
//  LanggananCollectionViewCell.swift
//  Telkomsel-Ui-NEW
//
//  Created by Phincon on 07/03/23.
//

import UIKit

class LanggananCollectionViewCell: UICollectionViewCell {

    static let identifier = "LanggananCollectionViewCell"
    
    @IBOutlet weak var paketInternet: UILabel!
    @IBOutlet weak var durasi: UILabel!
    @IBOutlet weak var hargaDiskon: UILabel!
    @IBOutlet weak var hargaAsli: UILabel!
    @IBOutlet weak var jenisPaket: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        setupHargaAsli()
        
    }

    func setupHargaAsli() {

        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Rp99.000"); attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length)); hargaDiskon.attributedText = attributeString }
}
                                            

    
