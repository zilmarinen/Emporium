//
//  Month.swift
//
//  Created by Zack Brown on 21/10/2024.
//

public enum Month: String,
                     CaseIterable,
                     Identifiable {
    
    public static var weeks: Int { 4 }
    public static var days: Int { weeks * Weekday.allCases.count }
    
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    
    public var id: String { rawValue.capitalized }
    
    public var abbreviation: String {
        
        switch self {
            
        case .january: return "Jan"
        case .february: return "Feb"
        case .march: return "Mar"
        case .april: return "Apr"
        case .may: return "May"
        case .june: return "Jun"
        case .july: return "Jul"
        case .august: return "Aug"
        case .september: return "Sep"
        case .october: return "Oct"
        case .november: return "Nov"
        case .december: return "Dec"
        }
    }
}
