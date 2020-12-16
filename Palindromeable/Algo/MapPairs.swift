//
//  MapPairs.swift
//  Palindromeable
//
//  Created by Asaad Jaber on 12/16/20.
//

import Foundation

class MapPairs {
    private var oddChar = 0
    private var incr = 0
    
    func mapPairs(sorted strArr: [String]) -> Bool {
        if strArr.count < 3 {
            return false
        }
                
        for i in stride(from: 0, through: strArr.count, by: 2) {
            let ind = i - incr
                        
            if ind == strArr.count - 1 {
                if oddChar == 0  {
                    return true
                } else {
                    return false
                }
            }
            
            if strArr[ind] == strArr[ind + 1] {
                if i == strArr.count - 2 && oddChar == 0  {
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
