//
//  TabbedItems.swift
//  HaruCapsule
//
//  Created by 김예림 on 3/22/24.
//

import Foundation

enum MainTabbedItems: Int, CaseIterable{
    case map = 0
    case add
    case save
    
    var title: String{
        switch self{
        case .map:
            return "map"
        case .add:
            return "add"
        case .save:
            return "stack"
        }
    }
    
    var iconName: String{
        switch self{
        case .map:
            return "map_fill"
        case .add:
            return "add"
        case .save:
            return "stack_unfill"
        }
    }
}


