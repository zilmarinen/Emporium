//
//  EmporiumApp.swift
//
//  Created by Zack Brown on 20/10/2024.
//

import Core
import Calendar
import Portfolio
import SwiftUI

@main
struct EmporiumApp: App {
    
    private let repo = AppRepo()
    
    var body: some Scene {
        
        WindowGroup {
            
            TabView {
                
                PortfolioView(repo: repo)
                    .tabItem {
                        
                        Label("Portfolio",
                              systemImage: "chart.line.uptrend.xyaxis.circle")
                    }
                
                CalendarView(repo: repo)
                    .tabItem {
                        
                        Label("Calendar",
                              systemImage: "calendar.circle")
                    }
            }
        }
    }
}
