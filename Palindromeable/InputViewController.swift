//
//  InputViewController.swift
//  Palindromeable
//

import UIKit

class InputViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        
    }
    
    var oddChar = 0
    var incr = 0
    
    func mapPairs(sorted str: String) -> Bool {
        if str.count < 3 {
            return false
        }
        
        let strArr = Array(str)
        
        for i in stride(from: 0, through: str.count, by: 2) {
            let ind = i - incr
                        
            if ind == str.count - 1 {
                if oddChar != 0  {
                    return false
                }
            }
            
            if strArr[ind] == strArr[ind + 1] {
                if i == str.count - 2 && oddChar == 0  {
                    return true
                }
            } else if oddChar >= 1 {
                return false
            } else {
                oddChar += 1
                incr += 1
            }
        }
        
        return true
    }
    
}

