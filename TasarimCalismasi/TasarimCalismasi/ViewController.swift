//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Zeki Gökler on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor:UIColor(named: "yaziRenk1")!, .font:UIFont(name: "Pacifico-Regular", size: 22)!]//Pizza yazısını beyaz yapıyo. İkinciside font ve büyüklük
        navigationController?.navigationBar.barStyle = .black
        
        
        //Üstteki kırmızı rengi pizzanın arka planı yani 'anaRenk' i kullanmayı sağladı
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        //left = leading = start
        //right = trailing = end
        
    }


}

