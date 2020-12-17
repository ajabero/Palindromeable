//
//  GridCell.swift
//  Palindromeable
//
//  Created by Asaad Jaber on 12/16/20.
//

import Foundation
import UIKit

class GridCell: UICollectionViewCell {
    static let reuseIdentifier = "gridCellId"
    
    var cellState: CellViewModel! {
        didSet {
            if cellState.state == true {
                label.text = "True"
                backgroundColor = UIColor(displayP3Red: 0/255, green: 173/255, blue: 67/255, alpha: 1)
            } else if cellState.state == false {
                label.text = "False"
                backgroundColor = UIColor.red
            } else {
                label.text = ""
                backgroundColor = UIColor.white
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    var label: CellLabel!
    
    func configureLabel() {
        label = CellLabel(fontSize: 52.0, fontWeight: .light)
        label.textColor = UIColor.white
        addSubview(label)
        
        let labelConstraints = [
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -80),
            label.widthAnchor.constraint(lessThanOrEqualTo: widthAnchor)
        ]
        
        NSLayoutConstraint.activate(labelConstraints)
    }
}
