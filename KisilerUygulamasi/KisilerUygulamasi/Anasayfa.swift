//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Zeki Gökler on 17.01.2023.
//

import UIKit

class Anasayfa : UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self // self = Anasayfa = UISearchBarDelegate
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "2222")
        kisilerListe.append(k1)
        kisilerListe.append(k2)

    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
    //func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {// searchBar a Ne giriliyorsa getirmesini sağlayan yapı.
      //  print("Kişi Ara : \(searchText)")
    //}
    
}

extension Anasayfa : UISearchBarDelegate { // Anasayfa class ına devam ediyoruz yukarının içinde veya burda olması farketmiyor çalışıcak.
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {// searchBar a Ne giriliyorsa getirmesini sağlayan yapı.
        print("Kişi Ara : \(searchText)")
    }
}

extension Anasayfa : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! TableViewHucre
        
        let kisi = kisilerListe[indexPath.row]
        
        hucre.labelAd.text = kisi.kisi_ad
        hucre.labelTel.text = kisi.kisi_tel
        
        return hucre
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {//Seçilen yerleri gösteriyor.
        let kisi = kisilerListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)    //Table ın üstündeki griliği kaldırmak istersen bunu yap
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){
            (contextualAction, view,bool) in
            let kisi = self.kisilerListe[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi",
                                          message: "\(kisi.kisi_ad!) silinsin mi ?",
                                          preferredStyle: .alert)//çıkan uyarı için
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)//Çıkan alert ta iptal tuşu için
            alert.addAction(iptalAction)
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in
                print("Kişi sil : \(kisi.kisi_id!)")
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}
