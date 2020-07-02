//
//  DiceRolls.swift
//  PolyDice
//
//  Created by Keith Lee on 2020/07/01.
//  Copyright © 2020 Keith Lee. All rights reserved.
//

import Foundation


class DiceRolls: ObservableObject {
    
    @Published var rawRolls: [Int]?
    @Published var finalResult: Int?
    
    struct Result {
        let rawRolls: [Int]
        let finalResult: Int
    }
    
    fileprivate func rawRoll(_ dice: Dice) -> Int {
        return Int.random(in: 1...dice.maxRollValue())
    }
    
    
    func roll(diceQuantity: Int, dice: Dice) -> Result {
        var rawRolls: [Int] = []
        var totalResult: Int = 0
        
        for _ in 0..<diceQuantity {
            rawRolls.append(rawRoll(dice))
        }
        
        for i in rawRolls {
            totalResult += i
        }
        
        return Result(rawRolls: rawRolls, finalResult: totalResult)
    }
    
}

