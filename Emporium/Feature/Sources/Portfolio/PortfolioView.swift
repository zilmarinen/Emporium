//
//  PortfolioView.swift
//
//  Created by Zack Brown on 20/10/2024.
//

import Core
import SwiftUI

public struct PortfolioView: View {
    
    @State private var viewModel: ViewModel
    
    public init(repo: Repository) {
        
        self.viewModel = ViewModel(repo: repo)
    }
    
    public var body: some View {
        
        Text("Portfolio")
    }
}
