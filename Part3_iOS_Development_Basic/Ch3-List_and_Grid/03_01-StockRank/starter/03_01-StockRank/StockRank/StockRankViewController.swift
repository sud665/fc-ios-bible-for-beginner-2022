//
//  StockRankViewController.swift
//  StockRank
//
//  Created by Max on 2023/10/03.
//

import UIKit

class StockRankViewController: UIViewController {
    
    
    let stockList: [StockModel] = StockModel.list
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    // Data, Presentation, Layout
    // Data - 어떤 데이터? ->
    
    
    // 프로토콜 -> 수행하는 규칙이 있음
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        
        
    }
    

    

}

extension StockRankViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let stock = stockList[indexPath.item]
              cell.configure(stock)
              return cell
        
        
        
        
    }
    
    
}

//셀 정렬
extension StockRankViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt IndexPath: IndexPath) -> CGSize{
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
