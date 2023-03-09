//
//  ImagePaketTableViewCell.swift
//  Telkomsel-UI-NEW
//
//  Created by Phincon on 08/03/23.
//

import UIKit

class ImagePaketTableViewCell: UITableViewCell {
    
    static let identifier = "ImagePaketTableViewCell"
    
    // passingData image
    var imagePaketModel: [imageDataModel]?
    
    @IBOutlet weak var imagePaketCell: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // set collectionview
    func setupPaket() {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.itemSize = CGSize(width: 260, height: 140)
        flowlayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        imagePaketCell.collectionViewLayout = flowlayout
        imagePaketCell.delegate = self
        imagePaketCell.dataSource = self
        imagePaketCell.register(UINib(nibName: ImagePaketCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: ImagePaketCollectionViewCell.identifier)
    }
    
}

extension ImagePaketTableViewCell : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 260, height: 140)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagePaketModel?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImagePaketCollectionViewCell.identifier, for: indexPath) as? ImagePaketCollectionViewCell else { return UICollectionViewCell() }

        if let image = imagePaketModel{
                cell.imagePaket.image = UIImage(named:"\(image[indexPath.row].imageDataModel)")
            }
        return cell
        }
}
