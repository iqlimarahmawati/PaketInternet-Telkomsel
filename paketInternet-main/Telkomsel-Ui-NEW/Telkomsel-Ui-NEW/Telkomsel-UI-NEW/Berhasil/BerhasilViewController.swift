//
//  BerhasilViewController.swift
//  Telkomsel-UI-NEW
//
//  Created by Phincon on 08/03/23.
//

import UIKit

class BerhasilViewController: UIViewController {

    @IBOutlet weak var pembayaranImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var deskripsiTitleLabel: UILabel!
    @IBOutlet weak var namaPaketLabel: UILabel!
    @IBOutlet weak var rincianPaketLabel: UILabel!
    
    var paket: PaketModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {
        pembayaranImage.image = UIImage(systemName: "checkmark.seal.fill")
        pembayaranImage.contentMode = .scaleAspectFit
        
        titleLabel.text = "Pembayaran Berhasil"
        deskripsiTitleLabel.text = "Pembayaran paket internet telah berhasil"


        
        namaPaketLabel.text = self.paket?.jenisPaket
//        rincianPaketLabel.layer.borderColor = UIColor.gray.cgColor
//        rincianPaketLabel.layer.borderWidth = 1
   
        // gabungin string rincian ke label
        let rincian = "\(self.paket?.internet ?? "") + \(self.paket?.omg ?? "") + \(self.paket?.sms ?? "") + \(self.paket?.voice ?? "")"
        rincianPaketLabel.text = rincian
        
    }
    
}
