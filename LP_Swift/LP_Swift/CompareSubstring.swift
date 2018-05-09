//
//  CompareSubstring.swift
//  LP_Swift
//
//  Created by João Victor Almeida Santana on 09/05/2018.
//  Copyright © 2018 João Victor Almeida Santana. All rights reserved.
//

import Foundation

class CompareSubstring {
    
    private var my_string1: String, my_string2: String
    
    init(string1: String, string2: String) {
        
        my_string1 = string1
        
        my_string2 = string2
        
    }
    
    func compareSubstring () {
        
        var k: Int = 0
        var count: Int = 0
        var max: Int = 0
        
        for indices_string1 in my_string1.indices {
            
            for indices_string2 in my_string2.indices {
                
                if my_string1[indices_string1] == my_string2[indices_string2] {
                    
                    count = 0
                    k = 0
                    
                    while k + indices_string1.encodedOffset < my_string1.count && k + indices_string2.encodedOffset < my_string2.count {
                        
                        if my_string1[my_string1.index(my_string1.startIndex, offsetBy: k + indices_string1.encodedOffset)] != my_string2[my_string2.index(my_string2.startIndex, offsetBy: k + indices_string2.encodedOffset)] {
                            
                            break
                            
                        }
                        
                        k += 1
                        
                        count += 1
                        
                    }
                    
                    if (count > max) {
                        
                        max = count
                        
                    }
                    
                }
                
            }
            
        }
        
        print(max)
        
    }
    
}
