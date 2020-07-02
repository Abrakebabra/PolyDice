//
//  Dice.swift
//  PolyDice
//
//  Created by Keith Lee on 2020/07/02.
//  Copyright © 2020 Keith Lee. All rights reserved.
//

import Foundation


enum Dice {
    case d100
    case d20
    case d12
    case d10
    case d8
    case d6
    case d4
    
    func maxRollValue() -> Int {
        switch self {
        case .d100:
            return 100
        case .d20:
            return 20
        case .d12:
            return 12
        case .d10:
            return 10
        case .d8:
            return 8
        case .d6:
            return 6
        case .d4:
            return 4
        }
    }
    
    func imageName() -> String {
        switch self {
        case .d100:
            return "d100"
        case .d20:
            return "d20"
        case .d12:
            return "d12"
        case .d10:
            return "d10"
        case .d8:
            return "d8"
        case .d6:
            return "d6"
        case .d4:
            return "d4"
        }
    }
    
}
