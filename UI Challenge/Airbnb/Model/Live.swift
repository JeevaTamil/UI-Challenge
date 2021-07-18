//
//  Live.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import Foundation

struct Live: Identifiable {
    let id = UUID()
    var name: String
    var imgName: String
    
    static let listStatic: [Live] = [
        Live(name: "Outdoor getaways", imgName: "outdoor"),
        Live(name: "Unique stays", imgName: "unique"),
        Live(name: "Entire homes", imgName: "home"),
        Live(name: "Pets allowed", imgName: "pets"),
    ]
}
