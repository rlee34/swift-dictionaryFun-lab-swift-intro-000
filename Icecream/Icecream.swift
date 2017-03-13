//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        
        for (name, variety) in favoriteFlavorsOfIceCream {
            if variety == flavor {
                names.append(name)
            }
        }
        
        return names
    }
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var result = 0
        
        for (_, variety) in favoriteFlavorsOfIceCream {
            if variety == flavor {
                result += 1
            }
        }
        
        return result
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        guard let flavor = favoriteFlavorsOfIceCream[person] else {
            return nil
        }
        
        return flavor
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            return false
        }
        
        favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        return true
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            return false
        }
        
        favoriteFlavorsOfIceCream[person] = nil
        return true
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            return false
        }
        
        favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        return true
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        var result: [String] = []
        
        for name in allNames {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                result.append("\(name) likes \(flavor)")
            }
        }
        
        return result.joined(separator: "\n")
    }
    
    

}





































































































