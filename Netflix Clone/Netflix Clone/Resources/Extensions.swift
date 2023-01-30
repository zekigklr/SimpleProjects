//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Zeki Gökler on 30.01.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {//Bu fonksiyon ile ilk harfleri büyük yaptık.
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
