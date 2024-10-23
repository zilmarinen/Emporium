//
//  CalendarTile.swift
//
//  Created by Zack Brown on 21/10/2024.
//

import SwiftUI

internal struct CalendarTile: View {
    
    public let text: String
    
    public init(_ text: String) {
        
        self.text = text
    }
    
    public var body: some View {
        
        Text(text)
            .padding()
            .background(Color.pink)
    }
}
