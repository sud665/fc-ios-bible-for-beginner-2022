//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by Max on 2023/10/03.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var companyIconView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companyPriceLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    
    
    func configure(_ stock: StockModel){
        rankLabel.text = "\(stock.rank)"
        companyIconView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = "\(stock.price) 원"
        diffLabel.text = "\(stock.diff)"
        
    }
    
}
