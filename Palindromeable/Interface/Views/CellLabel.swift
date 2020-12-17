//
//  CellLabel.swift
//  Palindromeable
//
//  Created by Asaad Jaber on 12/17/20.
//

import Foundation
import UIKit

class CellLabel: UILabel {
    init(fontSize: CGFloat , fontWeight: UIFont.Weight) {
        super.init(frame: CGRect())
        translatesAutoresizingMaskIntoConstraints = false
        font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
