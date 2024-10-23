//
//  CalendarView.swift
//
//  Created by Zack Brown on 20/10/2024.
//

import Core
import SwiftUI

public struct CalendarView: View {
    
    enum Constant {
        
        static let spacing: CGFloat = 8.0
    }
    
    @State private var viewModel: ViewModel
    
    public init(repo: Repository) {
        
        self.viewModel = ViewModel(repo: repo)
    }
    
    public var body: some View {
        
        LazyVGrid(columns: grid,
                  spacing: Constant.spacing) {
            
            header
            
            calendar
        }
    }
}

extension CalendarView {
    
    private var grid: [GridItem] { Array(repeating: .init(.flexible()),
                                         count: Weekday.allCases.count) }
    
    private var header: some View {
        
        ForEach(Weekday.allCases) { weekday in
            
            CalendarTile(weekday.abbreviation)
        }
    }
    
    private var calendar: some View {
        
        ForEach(0..<Month.weeks,
                id: \.self) { week in
            
            ForEach(0..<Weekday.allCases.count,
                    id: \.self) { day in
            
                CalendarTile("\((week * Weekday.allCases.count) + (day + 1))")
            }
        }
    }
}
