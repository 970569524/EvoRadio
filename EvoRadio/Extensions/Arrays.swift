//
//  Arrays.swift
//  EvoRadio
//
//  Created by Whisper-JQ on 6/1/16.
//  Copyright © 2016 JQTech. All rights reserved.
//

import Foundation

extension Array {
    func groupBy<G: Hashable>(groupClosure: (Element) -> G) -> [G: [Element]] {
        var dictionary = [G: [Element]]()
        
        for element in self {
            let key = groupClosure(element)
            var array: [Element]? = dictionary[key]
            
            if array == nil {
                array = [Element]()
            }
            
            array!.append(element)
            
            dictionary[key] = array
        }
        
        return dictionary
    }
}