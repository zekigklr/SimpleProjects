//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Zeki Gökler on 12.01.2023.
//

import UIKit

class Anasayfa : UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    var sayac = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSayac.text = String(sayac)
        
    }


    @IBAction func buttonTikla(_ sender: Any) {
        sayac = sayac + 1
        labelSayac.text = String(sayac)
        if sayac == 3 {
            performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)

        }
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis çalıştı")
            
            if let veri = sender as? Kisiler {
                print("Veri : \(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkrani
                gidilecekVC.mesaj = veri
            }
        }
    }
    
    
    
    
}

