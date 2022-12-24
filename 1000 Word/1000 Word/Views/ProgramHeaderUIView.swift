//
//  ProgramHeaderUIView.swift
//  1000 Word
//
//  Created by Zeki Gökler on 22.12.2022.
//

import UIKit

class ProgramHeaderUIView: UIView {

    private let HeroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "groot")
        return imageView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(HeroImageView)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        HeroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
