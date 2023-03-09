//
//  LanggananTableViewCell.swift
//  Telkomsel-Ui-NEW
//
//  Created by Phincon on 07/03/23.
//

import UIKit

protocol CellProtocol {
    func cellToDetail(paket: PaketModel)
}

class LanggananTableViewCell: UITableViewCell {

    static let identifier = "LanggananTableViewCell"
    
    var cellProtocol: CellProtocol?
    
    // passing data langganan
    var langgananinternet: [PaketModel] = []
    
    @IBOutlet weak var langgananPaket: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func setUpCell(){
            let flowlayout = UICollectionViewFlowLayout()
            flowlayout.scrollDirection = .horizontal
            flowlayout.itemSize = CGSize(width: 304, height: 132)
            flowlayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
            
            langgananPaket.collectionViewLayout = flowlayout
            langgananPaket.delegate = self
            langgananPaket.dataSource = self
            langgananPaket.register(UINib(nibName: LanggananCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: LanggananCollectionViewCell.identifier)
        }
        
    }
    
extension LanggananTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return langgananinternet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LanggananCollectionViewCell.identifier, for: indexPath) as? LanggananCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.paketInternet.text = langgananinternet[indexPath.row].paket
        cell.durasi.text = langgananinternet[indexPath.row].durasi
        cell.hargaDiskon.text = langgananinternet[indexPath.row].hargaDiskon
        cell.jenisPaket.text = langgananinternet[indexPath.row].jenisPaket
        cell.hargaAsli.text = langgananinternet[indexPath.row].hargaAsli
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 304, height: 132)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // ke detail screen
        self.cellProtocol?.cellToDetail(paket: self.langgananinternet[indexPath.row])
    }
}

