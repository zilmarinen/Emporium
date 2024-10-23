//
//  PortfolioViewModel.swift
//
//  Created by Zack Brown on 21/10/2024.
//

import Core
import SwiftUI

extension PortfolioView {
    
    @Observable
    internal class ViewModel {
        
        private let repo: Repository
        
        public init(repo: Repository) {
            
            self.repo = repo
        }
    }
}
