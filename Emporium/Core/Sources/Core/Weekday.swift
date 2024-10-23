//
//  Weekday.swift
//
//  Created by Zack Brown on 20/10/2024.
//

import Foundation

public enum Weekday: String,
                     CaseIterable,
                     Identifiable {
    
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    public var id: String { rawValue.capitalized }
    
    public var abbreviation: String {
        
        switch self {
            
        case .monday: return "Mo"
        case .tuesday: return "Tu"
        case .wednesday: return "We"
        case .thursday: return "Th"
        case .friday: return "Fr"
        case .saturday: return "Sa"
        case .sunday: return "Su"
        }
    }
}
