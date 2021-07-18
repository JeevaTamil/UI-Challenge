//
//  City.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 18/07/21.
//

import Foundation

struct City: Identifiable {
    let id = UUID()
    var name: String
    var timeForTravel: String
    var imgName: String
    
    static let staticData: [City] = [
        City(name: "Bengaluru", timeForTravel: "7", imgName: "bgl"),
        City(name: "Kochi", timeForTravel: "5.5", imgName: "kochi"),
        City(name: "Puducherry", timeForTravel: "6", imgName: "pdu"),
        City(name: "Thiruvananthapuram", timeForTravel: "3.5", imgName: "tvdm"),
        City(name: "Kodaikanal", timeForTravel: "3.5", imgName: "kodai"),
        City(name: "Mysuru", timeForTravel: "7", imgName: "msr"),
    ]
}
