//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Zeki Gökler on 12.01.2023.
//

import UIKit

class OyunEkrani: UIViewController {

    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        
        if let k = kisi {
            print("--------------- Oyun Ekranı --------------")
            print("Kişi ad : \(k.ad)")
            print("Kişi yaş : \(k.yas)")
            print("Kişi boy : \(k.boy)")
            print("Kişi bekar : \(k.bekar)")
        }
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func buttonBitti(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    

}
