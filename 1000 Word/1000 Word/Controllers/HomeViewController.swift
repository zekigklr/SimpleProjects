//
//  HomeViewController.swift
//  1000 Word
//
//  Created by Zeki Gökler on 22.12.2022.
//
//  Yapılacak olan proje ingilizce öğrenmek için bi yöntem. 1000 kelime bilmek küçük gibi gelsede 1000 kelime ve kullanım şekillerini kavradıktan sonra günlük konuşmaların %84 ü
//  anlaşılabilir oluyor. Günde sadece 8 kelime öğrenerek 125 günde izlediğiniz bi filmin %84 ünü anlayabilmek bence harika.
//  Yaptığım kısım sadece bu değil bi çok şekilde hatalar yaptım farklılaştırdım.
//  Projede olacaklar 1-) Öğrenilen kelimeler 2-) Öğrenilecek kelimeler 3-) 1000 Kelime
//  Artılar : Her kelime için örnek cümle, video voscreen benzeri, ve hatırlatma testleri.



import UIKit

class HomeViewController: UIViewController {

    private let homeFeedTable: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
        
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        // Üstte boş bir alan bıraktım. Orada 1000 kelimenin çalışılma şeklini anlatıcak bir görsel koyucam.
        let headerView = ProgramHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        homeFeedTable.tableHeaderView = headerView
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        125
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
}
