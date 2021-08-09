//
//  Milkshake.swift
//  Milkshake
//
//  Created by Azhagusundaram Tamil on 08/08/21.
//

import Foundation

struct Milkshake: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imgName: String
    let price: Int
    let isOfferApplied: Bool
    let offerPercent: Int
    var numOfItem: Int = 1
}

extension Milkshake {
    static let staticData: [Milkshake] = [
        Milkshake(name: "Banana Cream Pie", imgName: "banana_cream_pie", price: 70, isOfferApplied: false, offerPercent: 0),
        Milkshake(name: "Cherry Vanilla", imgName: "cherry_vanila", price: 100, isOfferApplied: true, offerPercent: 20),
        Milkshake(name: "Fruity Pebble", imgName: "fruity_pebble", price: 120, isOfferApplied: true, offerPercent: 30),
        Milkshake(name: "Mint White Chocolate", imgName: "mint_white_chocolate", price: 100, isOfferApplied: false, offerPercent: 0),
        Milkshake(name: "Oreo Cheese Cake", imgName: "oreo_cheesecake", price: 120, isOfferApplied: false, offerPercent: 0),
        Milkshake(name: "Peanut Butter Brownie", imgName: "peanut_butter_brownie", price: 100, isOfferApplied: false, offerPercent: 0),
        Milkshake(name: "Salter Caramel Pretzel", imgName: "peanut_butter_brownie", price: 120, isOfferApplied: true, offerPercent: 20),
        Milkshake(name: "Strawberry Shortcase", imgName: "strawberry_shortcase", price: 140, isOfferApplied: true, offerPercent: 20),
    ]
}
