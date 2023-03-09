//
//  VoucherCollectionViewCell.swift
//  Telkomsel-Ui-NEW
//
//  Created by Phincon on 07/03/23.
//

import UIKit

class VoucherCollectionViewCell: UICollectionViewCell {

    static let identifier = "VoucherCollectionViewCell"
    
    @IBOutlet weak var voucherImage: UIImageView!
    @IBOutlet weak var descVoucher: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    func setupView() {
        
        
        descVoucher.numberOfLines = 0
        descVoucher.font = .systemFont(ofSize: 17, weight: .bold)
    }

}
