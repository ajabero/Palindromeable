//
//  CellViewModel.swift
//  Palindromeable
//
//  Created by Asaad Jaber on 12/16/20.
//

import Foundation
import UIKit

class CellViewModel {
    var state: Bool?
    init(palindromeable: Bool?) {
        self.state = palindromeable
    }
}
