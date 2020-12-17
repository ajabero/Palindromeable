//
//  DataSource.swift
//  Palindromeable
//
//  Created by Asaad Jaber on 12/16/20.
//

import Foundation
import UIKit

class DataSource: NSObject {
    var palindromeable: Bool?
}

extension DataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if palindromeable == nil {
            return 0
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GridCell.reuseIdentifier, for: indexPath) as? GridCell else {
            fatalError("Expected `\(GridCell.self)` type for reuseIdentifier \(GridCell.reuseIdentifier).")
        }
        cell.cellState = CellViewModel(palindromeable: palindromeable)
        return cell
    }
}
