//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream : [String : String] = ["Joe" : "Peanut Butter and Chocolate",
                                                         "Tim" : "Natural Vanilla",
                                                         "Sophie" : "Mexican Chocolate",
                                                         "Deniz" : "Natural Vanilla",
                                                         "Tom" : "Mexican Chocolate",
                                                         "Jim" : "Natural Vanilla",
                                                         "Susan" : "Cookies 'N' Cream"]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var people : [String] = []
        for (person, findFlavor) in favoriteFlavorsOfIceCream {
            if flavor == findFlavor {
                people.append(person)
            }
        }
        return people
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var counter = 0
        
        for (_, findFlavor) in favoriteFlavorsOfIceCream {
            if flavor == findFlavor {
                counter += 1
            }
        }
        return counter
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if let person = favoriteFlavorsOfIceCream[person] {
            return person
        }
        return nil
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor : String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
       
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var attendees = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for (index, name) in allNames.enumerated() {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                if index + 1 < allNames.count {
                    attendees.append("\(name) likes \(flavor)\n")
                }
                else {
                    attendees.append("\(name) likes \(flavor)")
                }
            }
        }
        return attendees
    }
    
    
    
    
    
    
    

}
