//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 1, medium, fast
    
    func isFaster(thanSpeed: Speed) -> Bool { return self.rawValue >= thanSpeed.rawValue }

}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

class Trex {
    
    let name: String
    var speed = Speed.fast
    let diet = Diet.meatEater
    let sex: Sex
    var isAlive = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String { return "ROAAAWWWWRRRRR!!!!!!" }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        if self.speed.rawValue > trex.speed.rawValue { return true }
        return false
    }
    
    func eat(otherTrex trex: Trex) {
        if self.speed.rawValue > trex.speed.rawValue {
            trex.isAlive = false
        }
    }

}

