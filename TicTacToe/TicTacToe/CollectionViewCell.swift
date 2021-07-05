//
//  CollectionViewCell.swift
//  TicTacToe
//
//  Created by DCS on 05/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    func setupCell(with status:Int) {
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.black.cgColor
        contentView.layer.cornerRadius = 10
        contentView.addSubview(myImageView)
        myImageView.frame = CGRect(x: 10, y: 10, width: 60, height: 60)
        let name = status == 0 ? "O" : status == 1 ? "X" : ""
        myImageView.image = UIImage(named: name)
    }
}
