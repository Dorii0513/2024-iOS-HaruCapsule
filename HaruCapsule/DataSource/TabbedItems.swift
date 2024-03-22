//
//  TabbedItems.swift
//  HaruCapsule
//
//  Created by 김예림 on 3/22/24.
//

import Foundation

enum TabbedItems: Int, CaseIterable{
    case map = 0
    case add
    case stack
    
    var title: String{
        switch self{
        case .map:
            return "map"
        case .add:
            return "add"
        case .stack:
            return "stack"
        }
    }
    
    var iconName: String{
        switch self{
        case .map:
            return "map_fill"
        case .add:
            return "add"
        case .stack:
            return "stack_unfill"
        }
    }
}


