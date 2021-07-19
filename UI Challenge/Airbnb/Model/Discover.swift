//
//  Discover.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import Foundation

struct Discover: Identifiable {
    let id = UUID()
    var name: String
    var desc: String
    var imgName: String
    
    static let discoverStatic: [Discover] = [
        Discover(name: """
                 Featured collection:
                 Wanderlust
                 """,
                 desc: """
                    Travel from home with Online
                    Experiences.
                """, imgName: "feature"),
        Discover(name: """
                 Online Experiences
                 """,
                 desc: """
                    Live, interactive activities led
                    by Hosts.
                """, imgName: "online"),
        Discover(name: """
                 Experiences
                 """,
                 desc: """
                    Find unforgettable activities
                    near you.
                """, imgName: "exp"),
    ]
}






