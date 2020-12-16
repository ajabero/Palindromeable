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

    var evenPairs = 0 {
        didSet {
            print("evenPairs,", evenPairs)
        }
    }
    
    var oddPairs = 0 {
        didSet {
            print("odPairs,", oddPairs)
        }
    }
    
    var backTrack = 0 {
        didSet {
            print("backTrack,", oddPairs)
        }
    }
 
    func mapPairs(sorted str: String) -> Bool {
        if str.count < 3 {
            return false
        }
        
        let strArr = Array(str)
        
        //String will now be greater than or equal to 3 characters
        for i in stride(from: 0, to: str.count, by: 2) {
            let ind = i - backTrack
            print("ind is,", ind)
            print("now comparing,", strArr[ind], "to", strArr[ind + 1])

            if strArr[ind] == strArr[ind + 1] {
                evenPairs += 1
            } else if oddPairs >= 1 {
                return false
            } else {
                backTrack = 1
                oddPairs += 1
            }
        }
        
        return true
    }
    
    func hasPalindrome(string: String) -> Bool {

        return Bool()
    }
    
    func isPalindrome(string: String) -> Bool {
        
        return Bool()
    }
}

