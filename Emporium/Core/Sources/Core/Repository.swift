//
//  Repository.swift
//
//  Created by Zack Brown on 21/10/2024.
//

public protocol Repository {
    
    var items: [String] { get }
}

public class AppRepo: Repository {
    
    public var items: [String] = []
    
    public init() {}
}
