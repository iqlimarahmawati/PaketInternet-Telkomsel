//
//  DetailViewController.swift
//  Telkomsel-UI-NEW
//
//  Created by Phincon on 08/03/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var paket: PaketModel?

    
    @IBOutlet weak var DetailPaketTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
       
        setupDetailTableview()
    }

    func setupDetailTableview(){
        DetailPaketTableView.delegate = self
        DetailPaketTableView.dataSource = self
        DetailPaketTableView.separatorStyle = .none
        
        DetailPaketTableView.register(UINib(nibName: "PaketTotalTableViewCell", bundle: nil), forCellReuseIdentifier: PaketTotalTableViewCell.identifier)
        
        DetailPaketTableView.register(UINib(nibName: "MasaAktifTableViewCell", bundle: nil), forCellReuseIdentifier: MasaAktifTableViewCell.identifier)
        
        DetailPaketTableView.register(UINib(nibName: "RincianPaketTableViewCell", bundle: nil), forCellReuseIdentifier: RincianPaketTableViewCell.identifier)
        
        DetailPaketTableView.register(UINib(nibName: "DeskripsiPaketTableViewCell", bundle: nil), forCellReuseIdentifier: DeskripsiPaketTableViewCell.identifier)
        
        DetailPaketTableView.register(UINib(nibName: "BeliTableViewCell", bundle: nil), forCellReuseIdentifier: BeliTableViewCell.identifier)
    }
}

extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0: // Paket Total
            guard let cell = DetailPaketTableView.dequeueReusableCell(withIdentifier: PaketTotalTableViewCell.identifier, for: indexPath) as? PaketTotalTableViewCell else {
                return UITableViewCell()
            }
            cell.namaPaketLabel.text = self.paket?.jenisPaket
            cell.totalKuotaLabel.text = self.paket?.paket
            cell.hargaAsliLabel.text = self.paket?.hargaAsli
            cell.hargaDiskonLabel.text = self.paket?.hargaDiskon
            
            return cell
            
        case 1: // Masa Aktif
            guard let cell = DetailPaketTableView.dequeueReusableCell(withIdentifier: MasaAktifTableViewCell.identifier, for: indexPath) as? MasaAktifTableViewCell else {
                return UITableViewCell()
            }
            
            cell.layer.borderColor = UIColor.lightGray.cgColor
            cell.layer.borderWidth = 1
            cell.durasiMasaAktif.text = self.paket?.durasi
            return cell
            
        case 2: // rincian paket
            guard let cell = DetailPaketTableView.dequeueReusableCell(withIdentifier: RincianPaketTableViewCell.identifier, for: indexPath) as? RincianPaketTableViewCell else {
                return UITableViewCell()
            }
            cell.internetLabel.text = self.paket?.internet
            cell.omgLabel.text = self.paket?.omg
            cell.smsLabel.text = self.paket?.sms
            cell.voiceLabel.text = self.paket?.voice
            
            return cell
            
        case 3: // Deskripsi Paket
            guard let cell = DetailPaketTableView.dequeueReusableCell(withIdentifier: DeskripsiPaketTableViewCell.identifier, for: indexPath) as? DeskripsiPaketTableViewCell else {
                return UITableViewCell()
            }
            cell.layer.borderColor = UIColor.lightGray.cgColor
            cell.layer.borderWidth = 1
            cell.deskripsiLabel.text = self.paket?.deskripsi
            
            return cell
            
        case 4: // Beli paket
            guard let cell = DetailPaketTableView.dequeueReusableCell(withIdentifier: BeliTableViewCell.identifier, for: indexPath) as? BeliTableViewCell else {
                return UITableViewCell()
            }
            cell.beliButton.addTarget(self, action: #selector(beliButtonTapped(_:)), for: .touchUpInside)
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    @objc func beliButtonTapped(_ sender: Any) {
        print("Beli Sekarang")
        let beliVC = BerhasilViewController()
        beliVC.paket = self.paket
        self.navigationController?.pushViewController(beliVC, animated:true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: // Paket Total
            return 145
        case 1: // Masa Aktif
            return 44
        case 2: // Rincian Paket
            return 176
        case 3: // Deskripsi Paket
            return 300
        case 4: // Beli paket
            return 44
        default:
            return 0
        }
    }

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch indexPath.section {
//        case 4:
//
//
//        default:
//            return
//        }
//    }
}
