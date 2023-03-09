//
//  VoucherTableViewCell.swift
//  Telkomsel-Ui-NEW
//
//  Created by Phincon on 07/03/23.
//

import UIKit

class VoucherTableViewCell: UITableViewCell {

    static let identifier = "VoucherTableViewCell"
    
    @IBOutlet weak var voucherCollectionView: UICollectionView!
    
    var voucherDatas: [VoucherModel]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    
    func setupVoucher(){
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.itemSize = CGSize(width: 459, height: 285)
        flowlayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        voucherCollectionView.delegate = self
        voucherCollectionView.dataSource = self
        voucherCollectionView.collectionViewLayout = flowlayout
        voucherCollectionView.register(UINib(nibName: VoucherCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: VoucherCollectionViewCell.identifier)
    }
    
}

extension VoucherTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return voucherDatas?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VoucherCollectionViewCell.identifier, for: indexPath) as? VoucherCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.descVoucher.text = voucherDatas?[indexPath.row].judul
        cell.voucherImage.image = UIImage(named: voucherDatas?[indexPath.row].imageVoucher ?? "")
//        cell.layer.borderColor = UIColor.red.cgColor
//        cell.layer.borderWidth = 1
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width / 1.3, height: collectionView.frame.size.height)
    }
    
}
