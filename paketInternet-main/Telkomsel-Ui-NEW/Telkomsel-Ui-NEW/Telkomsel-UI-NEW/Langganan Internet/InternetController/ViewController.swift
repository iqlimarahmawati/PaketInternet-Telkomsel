//
//  ViewController.swift
//  Telkomsel-Ui-NEW
//
//  Created by Phincon on 07/03/23.
//

import UIKit

class ViewController: UIViewController, CellProtocol {
    
    var cellProtocol: CellProtocol?

    var imagePaket: [imageDataModel] = [imageDataModel(imageDataModel: "paket1"),
                                        imageDataModel(imageDataModel: "paket2"),]
    
    var langgananInternet: [PaketModel] = [
        PaketModel(paket: "14 GB", durasi: "⏳30 HARI", hargaAsli: "Rp99.000", hargaDiskon: "Rp96.000", jenisPaket: "Internet OMG!", internet: "4.5 GB", omg: "2 GB", sms: "60 SMS", voice: "100 Mins",
                   deskripsi: """
Paket Internet OMG! berlaku untuk 30 hari, dengan rincian kuota

* Kuota Internet dengan akses di semua jaringan (2G/3G/4G)
* Kuota Nelpon ke Sesama Telkomsel
* Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.
* Termasuk berlangganan 30 hari

"""),
        PaketModel(paket: "27 GB", durasi: "⏳30 HARI", hargaAsli: "Rp145.000", hargaDiskon: "Rp133.000", jenisPaket: "Undian", internet: "4.5 GB", omg: "2 GB", sms: "60 SMS", voice: "100 Mins",
                   deskripsi: """
Paket Internet OMG! berlaku untuk 30 hari, dengan rincian kuota

* Kuota Internet dengan akses di semua jaringan (2G/3G/4G)
* Kuota Nelpon ke Sesama Telkomsel
* Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.
* Termasuk berlangganan 30 hari
"""),
        PaketModel(paket: "14 GB", durasi: "⏳30 HARI", hargaAsli: "Rp99.00", hargaDiskon: "Rp96.000", jenisPaket: "Internet OMG!", internet: "4.5 GB", omg: "2 GB", sms: "60 SMS", voice: "100 Mins",
                   deskripsi: """
Paket Internet OMG! berlaku untuk 30 hari, dengan rincian kuota

* Kuota Internet dengan akses di semua jaringan (2G/3G/4G)
* Kuota Nelpon ke Sesama Telkomsel
* Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.
* Termasuk berlangganan 30 hari
"""),
        PaketModel(paket: "27 GB", durasi: "⏳30 HARI", hargaAsli: "Rp150.000", hargaDiskon: "Rp96.000", jenisPaket: "Internet OMG!", internet: "4.5 GB", omg: "2 GB", sms: "60 SMS", voice: "100 Mins",
                   deskripsi: """
Paket Internet OMG! berlaku untuk 30 hari, dengan rincian kuota

* Kuota Internet dengan akses di semua jaringan (2G/3G/4G)
* Kuota Nelpon ke Sesama Telkomsel
* Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.
* Termasuk berlangganan 30 hari
""")
    ]
    
    var voucher: [VoucherModel] = [VoucherModel(imageVoucher: "paketDouble", judul: "Double Benefit"),
                                   VoucherModel(imageVoucher: "joinUndi", judul: "Join Undi-Undi"),
    ]
    
    var belajar: [PaketModel] = [
        PaketModel(paket: "30 GB", durasi: "⏳30 Hari", hargaAsli: "FREE", hargaDiskon: "", jenisPaket: "RuangGuru", internet: "4.5 GB", omg: "2 GB", sms: "60 SMS", voice: "100 Mins",
                   deskripsi: """
Paket Internet OMG! berlaku untuk 30 hari, dengan rincian kuota

* Kuota Internet dengan akses di semua jaringan (2G/3G/4G)
* Kuota Nelpon ke Sesama Telkomsel
* Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.
* Termasuk berlangganan 30 hari
"""),
        PaketModel(paket: "30 GB", durasi: "⏳30 Hari", hargaAsli: "FREE", hargaDiskon: "", jenisPaket: "RuangUji", internet: "4.5 GB", omg: "2 GB", sms: "60 SMS", voice: "100 Mins",
                   deskripsi: """
Paket Internet OMG! berlaku untuk 30 hari, dengan rincian kuota

* Kuota Internet dengan akses di semua jaringan (2G/3G/4G)
* Kuota Nelpon ke Sesama Telkomsel
* Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.
* Termasuk berlangganan 30 hari
""")
    ]
    
    @IBOutlet weak var internetTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Paket Internet"
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red]
        
        cellProtocol = self
        
        setupTableView()
    }

    func setupTableView() {
        internetTableView.delegate = self
        internetTableView.dataSource = self
        internetTableView.separatorStyle = .none
        
        let imageCell = UINib(nibName: "ImagePaketTableViewCell", bundle: nil)
        internetTableView.register(imageCell, forCellReuseIdentifier: ImagePaketTableViewCell.identifier)
        
        let titleCell = UINib(nibName: "TitleTableViewCell", bundle: nil)
        internetTableView.register(titleCell, forCellReuseIdentifier: TitleTableViewCell.identifier)
        
        let langgananCell = UINib(nibName: "LanggananTableViewCell", bundle: nil)
        internetTableView.register(langgananCell, forCellReuseIdentifier: LanggananTableViewCell.identifier)
        
        let titleVoucherCell = UINib(nibName: "TitleVoucherTableViewCell", bundle: nil)
        internetTableView.register(titleVoucherCell, forCellReuseIdentifier: TitleVoucherTableViewCell.identifier)
        
        let voucherCell = UINib(nibName: "VoucherTableViewCell", bundle: nil)
        internetTableView.register(voucherCell, forCellReuseIdentifier: VoucherTableViewCell.identifier)
        
    }
    
    func cellToDetail(paket: PaketModel) {
        // action ke detail
        let detail = DetailViewController()
        detail.paket = paket
        self.navigationController?.pushViewController(detail, animated: true)
    }
        
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: // image
            return 1
        case 1: // title langganan
            return 1
        case 2: // langganan
            return 1
        case 3: // title popular
            return 1
        case 4: // popular
            return 1
        case 5: // title voucher
            return 1
        case 6: // voucher
            return 1
        case 7: // title belajar
            return 1
        case 8: // belajar
            return 1
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        switch indexPath.section {
        case 0: // IMAGE
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: ImagePaketTableViewCell.identifier, for: indexPath) as? ImagePaketTableViewCell else{
                return UITableViewCell()}
            
            cell.imagePaketModel = imagePaket
            cell.setupPaket()
            return cell
            
        case 1: // TITLE LANGGANAN
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
                return UITableViewCell()
            }
            cell.titleLabel.text = "Langganan Kamu"
            return cell
            
        case 2: // LANGGANAN
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: LanggananTableViewCell.identifier, for: indexPath) as? LanggananTableViewCell else {
                return UITableViewCell()}
            cell.setUpCell()
            
            cell.langgananinternet = self.langgananInternet
            
            cell.cellProtocol = cellProtocol
            
            return cell
            
        case 3: // TITLE POPULAR
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
                return UITableViewCell()
            }
            cell.titleLabel.text = "Popular"
            return cell
            
        case 4: // POPULAR
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: LanggananTableViewCell.identifier, for: indexPath) as? LanggananTableViewCell else {
                return UITableViewCell()}
            cell.setUpCell()
            cell.langgananinternet = langgananInternet
            
            cell.cellProtocol = cellProtocol
            return cell
            
        case 5: // TITLE VOUCHER
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: TitleVoucherTableViewCell.identifier, for: indexPath) as? TitleVoucherTableViewCell else {
                return UITableViewCell()
            }
            cell.titleLabel.text = "Cari Voucher, Yuk!"
            
            return cell
            
        case 6: // VOUCHER
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: VoucherTableViewCell.identifier, for: indexPath) as? VoucherTableViewCell else {
                return UITableViewCell()
            }
            cell.setupVoucher()
            cell.voucherDatas = voucher
            return cell
            
        case 7: // TITLE BELAJAR
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
                return UITableViewCell()
            }
            cell.titleLabel.text = "Belajar #dirumahaja"
            return cell
            
        case 8: // BELAJAR
            guard let cell = internetTableView.dequeueReusableCell(withIdentifier: LanggananTableViewCell.identifier, for: indexPath) as? LanggananTableViewCell else {
                return UITableViewCell()}
            cell.setUpCell()
            cell.langgananinternet = belajar
            
            cell.cellProtocol = cellProtocol
            
            return cell
            
        default:
            break
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return 116
        case 1:
            return 20
        case 2:
            return 200
        case 3:
            return 20
        case 4:
            return 200
        case 5:
            return 20
        case 6:
            return 200
        case 7:
            return 20
        case 8:
            return 200
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 2:
            print("langganan")
            
        case 4:
            print("popular")

        case 6:
            print("voucher")

        case 8:
            print("belajar")
            
        default:
            return
        }
    }
}
